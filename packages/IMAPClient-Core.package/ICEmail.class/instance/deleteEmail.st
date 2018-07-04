action
deleteEmail

		| anICEndPoint |
		anICEndPoint := folder endpoint select: self folder path.
		anICEndPoint deleteEmail: self.
		self deleteEmailFromDisk 

