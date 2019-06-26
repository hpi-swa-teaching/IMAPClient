delete
moveEmail: anEmailID to: aFolderString

	self sendCommand: (self class moveEmail: anEmailID to: ('"', aFolderString, '"')).		
	self fetchNextResponse.