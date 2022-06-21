protocol handling - delete
deleteEmail: anEmail

	self connectionHandler
		select: anEmail folder path;
		deleteEmail: anEmail messageID.
	
	self moveEmail: anEmail to: self folderNameOfTrash