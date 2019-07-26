action
deleteEmailFromDisk

	self folder emails remove: self. 
	FileDirectory default deleteFileNamed: (self maildirFileName, FileDirectory slash, self uniqueID)		