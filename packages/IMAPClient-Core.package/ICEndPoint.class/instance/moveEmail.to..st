protocol handling - move
moveEmail: anEmail to: aTargetFolderName

	| targetFolder |
	anEmail folder folderName = aTargetFolderName
		ifFalse: [
			self movedMailStorage addMail: anEmail forAccount: self accountInfo.		
			self connectionHandler select: anEmail folder path.
			
			"chg. something in the old folder"
			targetFolder := self getFolderFor: aTargetFolderName.
			self readWriter moveEmail: anEmail to: targetFolder.		
			self resetDeletedFlagWhenRecovering: anEmail.
						
			self connectionHandler moveEmail: anEmail messageID to: aTargetFolderName.
			targetFolder updateWithLoadedEmails: self collectAllEmails]
		ifTrue: [self inform: 'The Email is already in the specified folder']