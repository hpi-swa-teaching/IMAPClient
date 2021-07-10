protocol handling - move
moveEmail: anEmail to: aTargetFolderName
	
	
	| targetFolder |
	(anEmail folder folderName = aTargetFolderName) ifFalse: [
		"removes anEmail from the Set representing the moved Emails in the origin folder, in case it was already moved"
		(self movedMailStorage movedMailsForAccount: self connectionHandler accountInfo accountName andFolder: anEmail folder) remove: anEmail ifAbsent: [].
		"resolve the target folder from the given name"
		targetFolder := self rootFolder childFolderNamed: aTargetFolderName with: self hierarchyDelimiter ifAbsent: [].
		
		self deleteMailLocally: anEmail.
		self connectionHandler select: anEmail folder path.
		anEmail folder: targetFolder.
		self movedMailStorage addMail: anEmail forAccount: self accountInfo.
		targetFolder addMails: {anEmail}.
	
		self resetDeletedFlagWhenRecovering: anEmail.
	
		self connectionHandler moveEmail: anEmail messageID to: aTargetFolderName.
		targetFolder update
	] ifTrue: [self inform: 'The Email is already in the specified folder']