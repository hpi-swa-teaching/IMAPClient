delete
deleteEmail: anEmail

	self sendCommand: (ICCommand deleteEmail: anEmail messageID).	
	self fetchNextResponse.
	self moveEmail: anEmail to: self class folderNameOfTrash