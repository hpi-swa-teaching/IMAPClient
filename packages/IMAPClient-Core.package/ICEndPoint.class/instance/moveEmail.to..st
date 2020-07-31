delete
moveEmail: anEmail to: aFolder

	self select: anEmail folder path.
	anEmail folder removeMail: anEmail.
	self readWriter delete: anEmail.
	
	self sendCommand: (ICCommand moveEmail: anEmail messageID to: aFolder).		
	self fetchNextResponse.
	(self rootFolder childFolderNamed: aFolder with: (self hierarchyDelimiter)) update