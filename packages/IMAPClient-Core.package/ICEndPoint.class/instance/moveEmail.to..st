protocol handling - move
moveEmail: anEmail to: aFolder

	self connectionHandler select: anEmail folder path.
	self deleteMailLocally: anEmail.
	
	self resetDeletedFlagWhenRecovering: anEmail.
	
	self connectionHandler moveEmail: anEmail messageID to: aFolder.
	(self rootFolder childFolderNamed: aFolder with: (self hierarchyDelimiter)) update