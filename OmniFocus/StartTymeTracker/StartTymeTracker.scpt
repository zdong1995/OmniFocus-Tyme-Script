(*
	Start Tyme tracker for current selected task in OmniFocus.

	Copyright © 2020 Zhang Dong
	Licensed under MIT License
*)
tell application "OmniFocus"
	tell front window
		set selectedTree to selected trees of content
		set curTask to first item of selectedTree
		set tskName to name of curTask
	end tell
	
	tell application "Tyme2"
		set tsk to the first item of (every task of every project whose name = tskName)
		set tskId to id of tsk
		StartTrackerForTaskID tskId
	end tell
end tell