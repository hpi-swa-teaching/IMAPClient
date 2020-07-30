delete
deleteEmail: anEmail
	
	self select: anEmail folder path.
	self sendCommand: (ICCommand deleteEmail: anEmail messageID).
	self fetchNextResponse.
	
	anEmail folder removeMail: anEmail.
	self readWriter delete: anEmail.
	self moveEmail: anEmail to: self folderNameOfTrash.