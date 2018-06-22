action
expungeEmails

		| anICEndPoint |
		anICEndPoint := folder endpoint select: self folder path.
		anICEndPoint expungeEmail: self.
		folder emails remove: self. 
		FileDirectory default deleteFileNamed: (self maildirFileName, FileDirectory slash, self uid)
