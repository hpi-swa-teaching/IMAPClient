delete
deleteEmail: anEmail

	self sendCommand: (self class deleteEmail: anEmail messageID).	
	self fetchNextResponse.
	self moveEmail: anEmail to: self folderNameOfTrash