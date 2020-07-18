# OmniFocus Scripts
Automated scripts to enhance OmniFocus and simplify the management procedure.

## How do I use?
For each scripts there will be one `.scpt` file and one `.applescript` file. Download the `.scpt` file and move to the OmniFocus AppleScrip folder:
```
~/Library/Application Scripts/com.omnigroup.OmniFocus2
```
You can also get there quickly by heading to `Help->Open Scripts Folder`.

Then you can run the scripts by adding into OmniFocus shortcuts or other scrip launchers.

## [TagToday](https://github.com/zdong1995/productivity_script/tree/master/OmniFocus/TagToday)
For my weekly plan, I will tag some tasks with tag `this week`. Then to get things done everyday, I will select some tasks to tag `today` and then remove the tag `this week`. This script will help you do this just by one click.

# [WeeklyReport](https://github.com/zdong1995/productivity_script/tree/master/OmniFocus/WeeklyReport)
Generate report for customized days before current date and copy the text to clipboard.
The format of report will be:
``` markdown
## Completed Tasks in Last 7 days
YYYY/MM/D1 - YYYY/MM/D7


### YYYY/MM/D1
- [x] Task Name - [*Project Name*]
```
There will be a dialog window to ask "How many days before right now do you want to report?", and the default value is 7 for weekly report.
