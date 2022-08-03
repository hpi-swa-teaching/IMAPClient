protocol handling - move
moveEmail: anEmail to: aTargetFolderName

	| targetFolder originFolder |
	anEmail folder folderName = aTargetFolderName
		ifFalse: [
			self connectionHandler select: anEmail folder path.
			
			"chg. something in the old folder"
			originFolder := anEmail folder.
			targetFolder := self getFolderFor: aTargetFolderName.
			self readWriter moveEmail: anEmail to: targetFolder.
			self resetDeletedFlagWhenRecovering: anEmail.
			
			self connectionHandler moveEmail: anEmail messageID to: aTargetFolderName.
			
			targetFolder startUpdateWithLoadedEmails: self collectAllEmails showProgress: false with: []]
		ifTrue: [self inform: 'The Email is already in the specified folder']