protocol handling - move
moveEmail: anEmail to: aTargetFolderName
	
	| targetFolder |
	
	(anEmail folder folderName = aTargetFolderName) ifFalse: [
		self removeMoved: anEmail.
		targetFolder := self getFolderFor: aTargetFolderName.
		
		self deleteMailLocally: anEmail.
		self connectionHandler select: anEmail folder path.
		self addMail: anEmail to: targetFolder.
	
		self resetDeletedFlagWhenRecovering: anEmail.
	
		self connectionHandler moveEmail: anEmail messageID to: aTargetFolderName.
		targetFolder update] 
	ifTrue: [self inform: 'The Email is already in the specified folder']