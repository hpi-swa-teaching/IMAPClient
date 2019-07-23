commands
deleteEmail: aMessageId

	^ self join: {'STORE' . aMessageId . '+FLAGS \Deleted'}