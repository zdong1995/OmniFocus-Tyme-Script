# Tyme Sync with Calendar
This is an applescript hook for Tyme to automate sync last completed task to create an event in customized calendar. This script is designed for BusyCal application, if you are using Apple Calendar, just change the create events part. You can find help from [Calendar Scripting Guide](https://developer.apple.com/library/archive/documentation/AppleApplications/Conceptual/CalendarScriptingGuide/Calendar-CreateanEvent.html)

# How to use?

## 1. Download the script file
Download the `tyme3_applescript_hooks.scpt` file and move to the folder `~/Library/Application Scripts/com.tyme-app.Tyme3-macOS/` (if it’s not there, create it).
For Tyme 2, rename the hook file to `tyme2_applescript_hooks.scpt` file and move to the folder `~/Library/Application Scripts/de.lgerckens.Tyme2/`.

## 2. Edit your calendar preference
```
if prjName is not in {"IgnoreProject1", "IgnoreProject2", "IgnoreProject3"} then
    if prjName is in {"Project1", "Project2", "Project3"} then
        set calendar to calendar & "Calendar1"
    else if prjName is in {"Project4", "Project5", "Project6"} then
        set calendar to calendar & "Calendar2"
    else if prjName is in {"Project7", "Project8", "Project9"} then
        set calendar to calendar & "Calendar3"
    end if
```
Edit the ignoreed project and mapping during project and calendar as you like.

## 3. Enjoy!
The hook will be automatically triggered when you complete one task in Tyme.
