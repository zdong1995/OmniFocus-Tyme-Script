(*
	Applescript hook for Tyme 2 to automate with OmniFocus. For each task you completed in Tyme, 
	the script will automatically complete the task with same name in OmniFocus, and then update 
	the task name with a pair of time: real spend time / planned time.

	Copyright © 2020 Zhang Dong
	Licensed under MIT License
*)
on taskCompletedChanged(tskid)
	tell application "Tyme2"
		set spent to 0.0
		GetTaskRecordIDs startDate ((current date) - (168 * 60 * 60)) endDate (current date) taskID tskid
		set fetchedRecords to fetchedTaskRecordIDs as list
		repeat with recordID in fetchedRecords
			GetRecordWithID recordID
			set duration to timedDuration of lastFetchedTaskRecord
			set spent to (spent + duration / 3600)
		end repeat
		set spent to (round (spent * 10)) / 10
		set tsk to the first item of (every task of every project whose id = tskid)
		set prj to the first item of (every project whose id = (relatedProjectID of tsk))
		set pname to name of prj
		set tname to name of tsk
		tell application "OmniFocus"
			tell default document
				set opro to the first item of (flattened projects whose name is pname)
				set otsk to the first item of ((flattened tasks of opro) whose name is tname)
				mark complete otsk
				set plan to estimated minutes of otsk
				set name of otsk to (name of otsk & " ✅ " & spent as string) & " / " & (plan / 60) as string
			end tell
		end tell
	end tell
end taskCompletedChanged