# Productivity Scripts
Scripts to boost productivity and GTD management.

## [Tyme](https://github.com/zdong1995/productivity_script/tree/master/Tyme)
Scripts related to time management and time log.

### [Working Hour Distribution](https://github.com/zdong1995/productivity_script/tree/master/Tyme/Working_hour/)
Script designed to visulize the working time distribution from your time logger.

### [Tyme 2 Hooks with OmniFocus](https://github.com/zdong1995/productivity_script/tree/master/Tyme/Tyme2_hooks/)
Applescript hook for Tyme 2 to automate with OmniFocus. For each task you completed in Tyme, the script will automatically complete the task with same name in OmniFocus, and then update the task name with a pair of time: `real spend time / planned time`.

## [OmniFocus Scripts](https://github.com/zdong1995/productivity_script/tree/master/OmniFocus)
Automated scripts to enhance OmniFocus and simplify the management procedure.

### [StartTymeTracker](https://github.com/zdong1995/productivity_script/tree/master/OmniFocus/StartTymeTracker)
Start Tyme tracker for current selected task in OmniFocus.

### [CompleteTaskInTyme]()
Complete current selected task in OmniFocus and complete the task with same name in Tyme. Then update the task name with a pair of time: `real spent time / planned time`, which is similar to [Tyme 2 Hooks with OmniFocus](https://github.com/zdong1995/productivity_script/tree/master/Tyme/Tyme2_hooks/) but is triggered from OmniFocus side.

### [TagToday](https://github.com/zdong1995/productivity_script/tree/master/OmniFocus/TagToday)
For my weekly plan, I will tag some tasks with tag `this week`. Then to get things done everyday, I will select some tasks to tag `today` and then remove the tag `this week`. This script will help you do this just by one click.
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