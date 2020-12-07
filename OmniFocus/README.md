# OmniFocus Scripts
Automated scripts to enhance OmniFocus and simplify the management procedure.

## Python Script

### [AddTaskFromText](https://github.com/zdong1995/productivity_script/tree/master/OmniFocus/AddTaskFromText)

![](https://github.com/zdong1995/productivity_script/blob/master/img/text_to_om.gif)

Python script to add multiple tasks to OmniFocus with specified configurations, including project, estimated time, tag, due, etc. The text input should be as TaskPaper style which you can more find more details at [OmniFocus TaskPaper Reference Guide](https://support.omnigroup.com/omnifocus-taskpaper-reference/).

For the input for this script, it should be in the following format:
```python
Project Name:
- Task Name @tags(tag1, tag2) @due(Friday 23:30)  @flaaged
    - Subtask Name @due(Friday 23:30) @defer(Wednesday)

Project2 Name:
- Task Name
    - Subtask Name
```

### How to use?

1. Change the code `with open("ENTER YOUR FILE PATH HERE") as f:` to your file path, for example, `with open("~/Desktop/task.txt") as f:`. The file can be any type text file, just remember to keep the format as Task Paper.

2. Then you can use Terminal or whatever other tool you like (Alfred, Launchbar, VSCode, PyCharm, etc). If you use Terminal, change your directory to the samed address as your task file. Then run the python file using command `python add_task_to_omnifocus.py`.

3. Enjoy!


## Apple Script

Apple Script that can be triggered in OmniFocus automaticaly to save your tyme. For more details, you can refer to [OmniFocus 3 for Mac & Scripting](https://inside.omnifocus.com/applescript)

### How do I use?
For each scripts there will be one `.scpt` file and one `.applescript` file. Download the `.scpt` file and move to the OmniFocus AppleScrip folder:
```
~/Library/Application Scripts/com.omnigroup.OmniFocus3
```
You can also get there quickly by heading to `Help->Open Scripts Folder`.

Then you can run the scripts by adding into OmniFocus shortcuts or using other script launchers.

#### [StartTymeTracker](https://github.com/zdong1995/productivity_script/tree/master/OmniFocus/StartTymeTracker)
Start Tyme tracker for current selected task in OmniFocus.

![](https://github.com/zdong1995/productivity_script/blob/master/img/start_in_om.gif)

#### [CompleteTaskInTyme](https://github.com/zdong1995/productivity_script/tree/master/OmniFocus/CompleteTaskInTyme)
Complete current selected task in OmniFocus and complete the task with same name in Tyme. Then update the task name with a pair of time: `real spent time / planned time`, which is similar to [Tyme 2 Hooks with OmniFocus](https://github.com/zdong1995/productivity_script/tree/master/Tyme/Tyme2_hooks/) but is triggered from OmniFocus side.

![](https://github.com/zdong1995/productivity_script/blob/master/img/finish_in_om.gif)

#### [TagToday](https://github.com/zdong1995/productivity_script/tree/master/OmniFocus/TagToday)
For my weekly plan, I will tag some tasks with tag `this week`. Then to get things done everyday, I will select some tasks to tag `today` and then remove the tag `this week`. This script will help you do this just by one click.

![](https://github.com/zdong1995/productivity_script/blob/master/img/tag_change.gif)

#### [WeeklyReport](https://github.com/zdong1995/productivity_script/tree/master/OmniFocus/WeeklyReport)
Generate report for customized days before current date and copy the text to clipboard. There will be a dialog window to ask "How many days before right now do you want to report?", and the default value is 7 for weekly report. The format of report will be markdown as following and you can copy to any app you like.
``` markdown
## Completed Tasks in Last 7 days
YYYY/MM/D1 - YYYY/MM/D7


### YYYY/MM/D1
- [x] Task Name - [*Project Name*]
```
There will be a dialog window to ask "How many days before right now do you want to report?", and the default value is 7 for weekly report.