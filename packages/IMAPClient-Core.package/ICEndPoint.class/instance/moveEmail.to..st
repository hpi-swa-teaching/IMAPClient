delete
moveEmail: anEmail to: aFolder

	self select: anEmail folder path.
	self deleteMailLocally: anEmail.
	
	self sendCommand: (ICCommand moveEmail: anEmail messageID to: aFolder).		
	self fetchNextResponse.
	(self rootFolder childFolderNamed: aFolder with: (self hierarchyDelimiter)) update