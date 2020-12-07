# Tyme Scripts
Scripts related to time management and time log with [Tyme](https://tyme-app.com/en/) app.

## How do I use?
### 1. Hooks script
Download the `tyme3_applescript_hooks.scpt` file and move to the folder `~/Library/Application Scripts/com.tyme-app.Tyme3-macOS/` (if it’s not there, create it).
For Tyme 2, rename the hook file to `tyme2_applescript_hooks.scpt` file and move to the folder `~/Library/Application Scripts/de.lgerckens.Tyme2/`.

### 2. Other scripts
For the other scripts, just download the `.scpt` files and move to anywhere you like. Using `Script Editor` to run the script or using third-party script running applications to trigger the script.

## Script Library

These features can be adjusted based on your workflow. To use one more component, just copy another script code into the `tyme3_applescript_hooks.scpt` or `tyme2_applescript_hooks.scpt` and save your script.

#### [Working Hour Distribution](https://github.com/zdong1995/productivity_script/tree/master/Tyme/Working_hour/)
Script designed to visulize the working time distribution from your time logger.

![](https://github.com/zdong1995/productivity_script/blob/master/img/wrok_hour.gif)

#### [Tyme Hooks with OmniFocus](https://github.com/zdong1995/productivity_script/tree/master/Tyme/Tyme_hooks/)
Applescript hook for Tyme to automate with OmniFocus. For each task you completed in Tyme, the script will automatically complete the task with same name in OmniFocus, and then update the task name with a pair of time: `real spend time / planned time`.

![](https://github.com/zdong1995/productivity_script/blob/master/img/finish_in_tyme.gif)

#### [Tyme AutoSync to Calendar](https://github.com/zdong1995/productivity_script/tree/master/Tyme/Tyme_BusyCal/)
Applescript hook for Tyme to automate sync last completed task to create an event in customized calendar.

![](https://github.com/zdong1995/productivity_script/blob/master/img/tyme_to_cal.gif)

### [Tyme Relax Reminder](https://github.com/zdong1995/productivity_script/tree/master/Tyme/Tyme_Relax_reminder/)
Applescript hook for Tyme to automate setting a 15min alarm to start playing music in NeteaseMusic, in order to remind you to go back to work.