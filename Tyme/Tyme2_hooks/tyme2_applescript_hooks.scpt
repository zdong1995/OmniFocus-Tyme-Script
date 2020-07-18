tell application "OmniFocus"
	tell front window
		set selectedTrees to selected trees of content
		set selectedTasks to every item of selectedTrees
	end tell
	
	tell front document
		repeat with i from 1 to count of selectedTasks
			set theTask to the value of item i of selectedTasks
			set currTags to name of tags of theTask
			
			repeat with x from 1 to count of currTags
				set currTag to item x of currTags
				if currTag = "📌 This Week" then
					-- find tag object of week
					set currTag to (first flattened tag whose name is item x of currTags)
					remove currTag from tags of theTask
					
				end if

			-- find tag object of today
			set todayTag to (first flattened tag whose name is "🎯 Today")
			add todayTag to tags of theTask

			end repeat
		end repeat
	end tell
end tell