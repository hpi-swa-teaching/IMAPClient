action
deleteEmailFromDisk

		folder emails remove: self. 
		FileDirectory default deleteFileNamed: (self maildirFileName, FileDirectory slash, self uid)		