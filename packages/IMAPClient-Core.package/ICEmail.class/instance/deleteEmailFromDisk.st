action
deleteEmailFromDisk

		folder emails remove: self. 
		self halt.
		FileDirectory default deleteFileNamed: (self maildirFileName, FileDirectory slash, self uid)		