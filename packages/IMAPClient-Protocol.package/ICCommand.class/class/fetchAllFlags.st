commands
fetchAllFlags

	^ self join: {'UID FETCH 1:* (FLAGS)'}