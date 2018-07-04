delete
moveEmail: anEmail to: aFolder

	self sendCommand: (self class moveEmail: anEmail messageID to: aFolder).		
	self fetchNextResponse.
	(self rootFolder childFolderNamed: aFolder) update