protocol handling - move
moveEmail: anEmail to: folderName
	
	|aFolder|
	(ICMovedEmailStorage at: {self accountName, anEmail folderName}) remove: anEmail.
	aFolder := self rootFolder childFolderNamed: folderName ifAbsent: [].
	(ICMovedEmailStorage at: {self accountName, folderName}) add: anEmail.
	
	self connectionHandler select: anEmail folder path.
	
	self deleteMailLocally: anEmail.
	aFolder addMails: {anEmail}.
	anEmail folder: aFolder.
	
	self resetDeletedFlagWhenRecovering: anEmail.
	
	self connectionHandler moveEmail: anEmail messageID to: folderName.
	(self rootFolder childFolderNamed: folderName with: (self hierarchyDelimiter)) update