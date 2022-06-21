protocol handling - move
moveEmail: anEmail to: aTargetFolderName

	| targetFolder |
	anEmail folder folderName = aTargetFolderName
		ifFalse: [
			targetFolder := self getFolderFor: aTargetFolderName.
			self prepareMoveEmail: anEmail.
			self addMail: anEmail to: targetFolder.
			self resetDeletedFlagWhenRecovering: anEmail.
			
			self connectionHandler moveEmail: anEmail messageID to: aTargetFolderName.
			targetFolder update]
		ifTrue: [self inform: 'The Email is already in the specified folder']