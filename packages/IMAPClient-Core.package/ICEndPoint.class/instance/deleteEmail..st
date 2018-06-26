delete
deleteEmail: anEmail

	self sendCommand: (self class deleteEmail: anEmail messageID).	
	self fetchNextResponse.
	self sendCommand: (self class moveEmail: anEmail messageID to: self folderNameOfTrash).			
	self fetchNextResponse