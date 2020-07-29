action
deleteEmailFromDisk

	self folder removeMail: self. 
	ICFileReadWriter new delete: self