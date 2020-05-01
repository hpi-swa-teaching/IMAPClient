action
deleteEmailFromDisk

	self folder removeMail: self. 
	FileDirectory default deleteFileNamed: (self maildirFileName, FileDirectory slash, self uniqueID)		