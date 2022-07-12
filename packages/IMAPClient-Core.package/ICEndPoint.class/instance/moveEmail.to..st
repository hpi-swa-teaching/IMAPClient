protocol handling - move
moveEmail: anEmail to: aTargetFolderName

	| targetFolder |
	anEmail folder folderName = aTargetFolderName
		ifFalse: [
			targetFolder := self getFolderFor: aTargetFolderName.
			
			"For movedMailStorage:" 
			self removeMoved: anEmail.
			
			"chg. something in the old folder"
			self connectionHandler select: anEmail folder path.
			self readWriter moveEmail: anEmail to: targetFolder.
			
			
			self resetDeletedFlagWhenRecovering: anEmail.
			
			
			self connectionHandler moveEmail: anEmail messageID to: aTargetFolderName.
			targetFolder update]
		ifTrue: [self inform: 'The Email is already in the specified folder']