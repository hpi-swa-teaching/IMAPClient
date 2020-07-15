action
deleteEmailFromDisk

	self folder removeMail: self. 
	ICFileReadWriter new delete: self uniqueID in: self maildirFileName