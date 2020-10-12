(*
	Applescript hook for Tyme to automate with OmniFocus. For each task you completed in Tyme, 
	the script will automatically complete the task with same name in OmniFocus, and then update 
	the task name with a pair of time: real spend time / planned time.

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
			if prjName is not in {"Daily", "Sleep", "Accompany", "Consume", "Exams"} then
				if prjName is in {"TechBowl", "Jiuzhang", "LaiOffer"} then
					set calendar to calendar & "CodeCamp"
				else if prjName is in {"LeetCode", "LeetCode 复习", "CNT5106C", "CNT5615"} then
					set calendar to calendar & "Focus Tasks"
				else if prjName is in {"Vlog", "Writing", "Errand"} then
					set calendar to calendar & "Personal"
				else if prjName is in {"Jiuzhang", "TechBowl", "LaiOffer"} then
					set calendar to calendar & "Focus Tasks"
				else if prjName is in {"Full-Stack", "Project"} then
					set calendar to calendar & "Project"
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
				
				tell application "BusyCal"
					activate
					open location "busycalevent://new/" & theText
				end tell
			end if
		end if
	end tell
end timerStoppedForTaskRecord
