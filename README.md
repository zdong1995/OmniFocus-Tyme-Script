# Productivity Scripts
Scripts to boost productivity and GTD management.

## [Tyme Scripts](https://github.com/zdong1995/productivity_script/tree/master/Tyme)
Scripts related to time management and time log with [Tyme](https://tyme-app.com/en/) app.

### [Working Hour Distribution](https://github.com/zdong1995/productivity_script/tree/master/Tyme/Working_hour/)
Script designed to visulize the working time distribution from your time logger.

![](https://github.com/zdong1995/productivity_script/blob/master/img/work_hour.gif)

### [Tyme Hooks with OmniFocus](https://github.com/zdong1995/productivity_script/tree/master/Tyme/Tyme_hooks/)
Applescript hook for Tyme to automate with OmniFocus. For each task you completed in Tyme, the script will automatically complete the task with same name in OmniFocus, and then update the task name with a pair of time: `real spend time / planned time`.

![](https://github.com/zdong1995/productivity_script/blob/master/img/finish_in_tyme.gif)

### [Tyme AutoSync to Calendar](https://github.com/zdong1995/productivity_script/tree/master/Tyme/Tyme_BusyCal/)
Applescript hook for Tyme to automate sync last completed task to create an event in customized calendar.

![](https://github.com/zdong1995/productivity_script/blob/master/img/tyme_to_cal.gif)

### [Tyme Relax Reminder](https://github.com/zdong1995/productivity_script/tree/master/Tyme/Tyme_Relax_reminder/)
Applescript hook for Tyme to automate setting a 15min alarm to start playing music in NeteaseMusic, in order to remind you to go back to work.

## [OmniFocus Scripts](https://github.com/zdong1995/productivity_script/tree/master/OmniFocus)
Automated scripts to enhance OmniFocus and simplify the management procedure.

### [AddTaskFromText](https://github.com/zdong1995/productivity_script/tree/master/OmniFocus/AddTaskFromText)
Python script to add multiple tasks to OmniFocus with specified configurations.

![](https://github.com/zdong1995/productivity_script/blob/master/img/text_to_om.gif)

### [StartTymeTracker](https://github.com/zdong1995/productivity_script/tree/master/OmniFocus/StartTymeTracker)
Start Tyme tracker for current selected task in OmniFocus.

![](https://github.com/zdong1995/productivity_script/blob/master/img/start_in_om.gif)

### [CompleteTaskInTyme](https://github.com/zdong1995/productivity_script/tree/master/OmniFocus/CompleteTaskInTyme)
Complete current selected task in OmniFocus and complete the task with same name in Tyme. Then update the task name with a pair of time: `real spent time / planned time`, which is similar to [Tyme 2 Hooks with OmniFocus](https://github.com/zdong1995/productivity_script/tree/master/Tyme/Tyme2_hooks/) but is triggered from OmniFocus side.

![](https://github.com/zdong1995/productivity_script/blob/master/img/finish_in_om.gif)

### [TagToday](https://github.com/zdong1995/productivity_script/tree/master/OmniFocus/TagToday)
For my weekly plan, I will tag some tasks with tag `this week`. Then to get things done everyday, I will select some tasks to tag `today` and then remove the tag `this week`. This script will help you do this just by one click.

![](https://github.com/zdong1995/productivity_script/blob/master/img/tag_change.gif)

### [WeeklyReport](https://github.com/zdong1995/productivity_script/tree/master/OmniFocus/WeeklyReport)
Generate report for customized days before current date and copy the text to clipboard. There will be a dialog window to ask "How many days before right now do you want to report?", and the default value is 7 for weekly report. The format of report will be markdown as following and you can copy to any app you like.
``` markdown
## Completed Tasks in Last 7 days
YYYY/MM/D1 - YYYY/MM/D7


### YYYY/MM/D1
- [x] Task Name - [*Project Name*]
```
## License
Copyright © 2020 Zhang Dong

MIT License