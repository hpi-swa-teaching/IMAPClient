protocol handling - move
moveEmail: anEmail to: aTargetFolderName

	| targetFolder |
	targetFolder := self getFolderFor: aTargetFolderName.
	anEmail folder = targetFolder
		ifFalse: [
			self connectionHandler select: anEmail folder path.
			self connectionHandler moveEmail: anEmail messageID to: aTargetFolderName.
			self readWriter moveEmail: anEmail to: targetFolder.
			self resetDeletedFlagWhenRecovering: anEmail.
			
			"this is important for ensuring the synchronicity with the server but it can take a while"
			anEmail folder startUpdateWithLoadedEmails: self collectAllEmails.
			targetFolder startUpdateWithLoadedEmails: self collectAllEmails]
		ifTrue: [self inform: 'The Email is already in the specified folder']