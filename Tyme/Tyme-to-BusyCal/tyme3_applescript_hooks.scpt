(*
	Applescript hook for Tyme to automate sync last completed task to 
	create event in customized calendar.

	Copyright © 2020 Zhang Dong
	Licensed under MIT License
*)
on timerStoppedForTaskRecord(tskRecordID)
	tell application "Tyme"
		GetRecordWithID tskRecordID
		if recordType of lastFetchedTaskRecord is equal to "timed" then
			set prjID to relatedProjectID of lastFetchedTaskRecord
			set tskID to relatedTaskID of lastFetchedTaskRecord
			set prj to the first item of (every project whose id = prjID)
			set tsk to the first item of (every task of every project whose id = tskID)
			set tskName to name of tsk
			set prjName to name of prj
			set calendar to " /"
			-- you can change the project name here
			if prjName is not in {"IgnoreProject1", "IgnoreProject2", "IgnoreProject3"} then
				if prjName is in {"Project1", "Project2", "Project3"} then
					set calendar to calendar & "Calendar1"
				else if prjName is in {"Project4", "Project5", "Project6"} then
					set calendar to calendar & "Calendar2"
				else if prjName is in {"Project7", "Project8", "Project9"} then
					set calendar to calendar & "Calendar3"
				end if
				
				-- start time
				set strt to (timeStart of lastFetchedTaskRecord)
				set startTime to time string of strt
				set AppleScript's text item delimiters to ":"
				set startHour to text item 1 of startTime as string
				set startMinute to text item 2 of startTime as string
				set input to tskName & " today from " & startHour & ":" & startMinute
				
				-- end time
				set ed to (timeEnd of lastFetchedTaskRecord)
				set endTime to time string of ed
				set endHour to text item 1 of endTime as string
				set endMinute to text item 2 of endTime as string
				set input to input & " to " & endHour & ":" & endMinute & calendar as string
				
				-- encode
				set theText to do shell script "/usr/bin/python -c 'import sys, urllib; print urllib.quote(sys.argv[1])' " & quoted form of input
				set AppleScript's text item delimiters to "/"
				set theTextItems to text items of theText
				set AppleScript's text item delimiters to "%2F"
				set theText to theTextItems as string
				set AppleScript's text item delimiters to {""}
				
				-- you can change to your calendar app here
				tell application "BusyCal"
					activate
					open location "busycalevent://new/" & theText
				end tell
			end if
		end if
	end tell
end timerStoppedForTaskRecord
