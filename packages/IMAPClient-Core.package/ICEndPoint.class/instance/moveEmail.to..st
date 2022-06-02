protocol handling - move
moveEmail: anEmail to: aTargetFolderName
	
	| targetFolder |
	
	(anEmail folder folderName = aTargetFolderName)
	ifTrue: [self inform: 'The Email is already in the specified folder']
	ifFalse: [targetFolder := self getFolderFor: aTargetFolderName.
			self prepareMoveEmail: anEmail.
			"(self movedMailStorage at: 'web') first"
			self addMail: anEmail to: targetFolder.
			self resetDeletedFlagWhenRecovering: anEmail.
			
			self connectionHandler moveEmail: anEmail messageID to: aTargetFolderName.
			targetFolder update]
	