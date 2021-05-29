protocol handling - delete
deleteEmail: anEmail
	
	self select: anEmail folder path.
	self sendCommand: (ICCommand deleteEmail: anEmail messageID).
	
	self moveEmail: anEmail to: self folderNameOfTrash.