(*
	Applescript hook for Tyme 2 to automate setting a 15 min alarm to start
	playing music in NeteaseMusic, in order to remind you to go back to work.

	Copyright © 2020 Zhang Dong
	Licensed under MIT License
*)
on timerStartedForTaskRecord(tskRecordID)
	
	tell application "Tyme2"
		set tskID to trackedTaskIDs
		set tsk to the first item of (every task of every project whose id = tskID)
		set tskName to name of tsk
		if tskName = "Relax" then
			delay 900
			tell application "System Events" to tell process "NeteaseMusic"
				click menu item 1 of menu 1 of menu bar item 4 of menu bar 1
			end tell
		end if
	end tell
	
end timerStartedForTaskRecord