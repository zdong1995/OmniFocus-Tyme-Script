(*
	Generate report for customized days before current date and copy the text to clipboard.

	Copyright © 2020 Zhang Dong
	Licensed under MIT License
*)
tell application "OmniFocus"
	set n to the text returned of (display dialog "How many days before right now do you want to report?" default answer "7")
	set curDate to (current date) - n * days
	set {curDate's hours, curDate's minutes, curDate's seconds} to {0, 0, 0}
	set curReport to "## Completed Tasks in Last 7 days" & return & short date string of curDate & " - " & short date string of (current date) & return & return
	
	tell default document
		repeat with i from 1 to n
			set curFinishedTasks to (a reference to (flattened tasks where (completion date ≥ curDate and completion date ≤ curDate + 1 * days)))
			set {tskNameList, tskProjectList} to {name, name of its containing project} of curFinishedTasks
			set curReport to curReport & return & "### " & short date string of curDate & return
			repeat with i from 1 to length of tskNameList
				set {tskName, tskProject} to {item i of tskNameList, item i of tskProjectList}
				set curReport to curReport & "- [x] " & tskName
				if tskProject is not missing value then
					set curReport to curReport & " - [*" & tskProject & "*]" & return
				else
					set curReport to curReport & return
				end if
			end repeat
			set {tskNameList, tskProjectList} to {null, null}
			set curDate to curDate + 1 * days
		end repeat
	end tell
	
	set the clipboard to curReport
end tell