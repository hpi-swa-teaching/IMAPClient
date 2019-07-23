delete
moveEmail: anEmail to: aFolder

	self sendCommand: (ICCommand moveEmail: anEmail messageID to: ('"', aFolder, '"')).		
	self fetchNextResponse.
	(self rootFolder childFolderNamed: aFolder with: (self hierarchyDelimiter)) update