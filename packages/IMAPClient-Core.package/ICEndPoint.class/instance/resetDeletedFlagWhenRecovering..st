protocol handling - flags
resetDeletedFlagWhenRecovering: anEmail

	(anEmail folderName = self folderNameOfTrash)
		ifTrue: [ self resetFlag: anEmail and: #deleted]