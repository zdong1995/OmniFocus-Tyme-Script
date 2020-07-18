# Script designed to visulize the working time distribution from your time logger.
# Copyright © 2020 Zhang Dong
# Licensed under MIT License

import sys
import pandas as pd
import numpy as np
from matplotlib import pyplot as plt

f_name = sys.argv[1]
precision = str(sys.argv[2])
df = pd.read_csv(f_name)

# create timestamp in report and round time to nearest quarter
start = pd.to_datetime(df['start']).dt.round(precision)
end = pd.to_datetime(df['end']).dt.round(precision)
period = pd.concat([start, end], axis = 1)

# create blank time range table and initialize freq to 0
index = pd.date_range('00:00', '23:59', freq=precision)
dist = pd.DatetimeIndex.to_frame(index, name='time')
dist['freq'] = 0

'''
1. traverse period record and create time range table using start and end time
2. inner join with dist table
3. sum each row to get freq for each time range
'''
col = df.shape[0]
for i in range(col):
    start_time = str(period.loc[i]['start'])
    end_time = str(period.loc[i]['end'])
    if end_time == '00:00': # corner case for end time = 0:00 of second day
        end_time = '23:59'
    time_range = pd.date_range(start_time, end_time, freq=precision)
    freq = pd.DatetimeIndex.to_frame(time_range, name='time')
    freq['freq%d' % i] = 1
    dist = pd.merge(dist, freq, how='left')
    i += 1

dist.fillna(0) # format 'NA' to 0 and aggregate
dist['sum'] = dist.iloc[:,1:].sum(axis=1, numeric_only=True)

# aggregate record to customized precision
result = dist[['time', 'sum']]
work = result.groupby(pd.Grouper(key='time', freq=precision)).sum()

# create labels for 24 hour
steps = {'15T': 0.25, '30T': 0.5, '1H': 1}
hour = np.arange(0,24,steps[precision])
work['hour'] = hour

# bar plot
width = {'15T': 0.2, '30T': 0.4, '1H': 0.8}
plt.figure(figsize=(20, 10))
plt.bar(work['hour'], work['sum'], width=width[precision], color='pink')
plt.tick_params(labelsize=18)
plt.xlim((-0.2, 24))
plt.xticks(np.arange(0,25,3))
plt.yticks([])
ax = plt.gca()
ax.spines['top'].set_visible(False)
ax.spines['bottom'].set_visible(False)
ax.spines['left'].set_visible(False)
ax.spines['right'].set_visible(False)
ax.tick_params(axis='both', which='both', length=0)
plt.savefig('%s.png' % f_name, bbox_inches='tight', dpi=300)