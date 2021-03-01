# Script designed to add task into coresponding project in omnifocus based on input
# Copyright © 2020 Zhang Dong
# Licensed under MIT License

from urllib import quote
import webbrowser

# you can change the query processing based on your customized input
query = "{query}"

list = query.split(",")

task_name = list[0].strip() + " @flagged @today @estimate(1h) @tags(Types : 🗓 Tasks, Devices : 💻 Mac, Status : 🎯 Today)"
proj_name = list[1].replace(" ", "")  # OmniFocus will ignore the space to locate the project

url = "omnifocus:///paste?target=/task/" + proj_name +  "&content=" + quote(task_name)
webbrowser.open(url)