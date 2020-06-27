# Working Hour Distribution
This is a script designed to visulize the working time log from your time logger. You can export `.csv` report from time loger app and run script to automatically generate your working hour distribtuion. The script support three precisions, 15 min, 30 min and 1 hour.

# How to use?

## 1. Download the python file
Download the `working_hour.py` file and locate to the same directory as your `.csv` report file.

## 2. Run and enjoy
Run following command in terminal:
```
python working_hour.py <report.csv> 30T
```
You will find one `png` file with same name as your `report.csv` under the same path. Find your time distribution and anylyze to improve.

The command support 3 parameters for precisioncurrently:
- `15T`: 15min
- `30T`: 30min
- `1H`: 1h

![1H](https://raw.githubusercontent.com/zdong1995/PicGo/master/img/1H.png)
![30T](https://raw.githubusercontent.com/zdong1995/PicGo/master/img/30T.png)
![15T](https://raw.githubusercontent.com/zdong1995/PicGo/master/img/15T.png)