(*
	Applescript to add a single task based on input query and run in Tyme.

	Copyright © 2021 Zhang Dong
	Licensed under MIT License
*)
tell application "Tyme"
	-- you can change the query processing based on your input
	set input to "{query}"
	set str to input as string
	set AppleScript's text item delimiters to ", "
	set tskName to text item 1 of str
	set projName to text item 2 of str
	make new task of (project projName) with properties {name:tskName, taskType:"timed"}
	set tsk to the first item of (every task of every project whose name = tskName)
	set tskId to id of tsk
	StartTrackerForTaskID tskId
end tell