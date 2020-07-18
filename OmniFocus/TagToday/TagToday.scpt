(*
	Add tag "Today" to tasks with tag "This week" and remove "This week" tag.

	Copyright © 2020 Zhang Dong
	Licensed under MIT License
*)
tell application "OmniFocus"
	tell front window
		set selectedTrees to selected trees of content
		set selectedTasks to every item of selectedTrees
	end tell
	
	tell front document
		repeat with tskIdx from 1 to count of selectedTasks
			set theTask to the value of item i of selectedTasks
			set currTags to name of tags of theTask
			
			repeat with tagIdx from 1 to count of currTags
				set currTag to item tagIdx of currTags
				if currTag = "This Week" then
					set currTag to (first flattened tag whose name is item x of currTags)
					remove currTag from tags of theTask
				end if
			set todayTag to (first flattened tag whose name is "Today")
			add todayTag to tags of theTask
			end repeat
		end repeat
	end tell
end tell