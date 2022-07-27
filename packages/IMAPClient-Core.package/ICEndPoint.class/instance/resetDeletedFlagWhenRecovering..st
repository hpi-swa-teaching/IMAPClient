protocol handling - flags
resetDeletedFlagWhenRecovering: anEmail

	anEmail folderName = self folderNameOfTrash ifTrue: [self resetFlag: #deleted of: anEmail]