action
deleteEmail

		| anICEndPoint |
		anICEndPoint := folder endpoint select: self folder path.
		anICEndPoint deleteEmail: self.
		folder emails remove: self. 
		FileDirectory default deleteFileNamed: (self maildirFileName, FileDirectory slash, self uid)		
