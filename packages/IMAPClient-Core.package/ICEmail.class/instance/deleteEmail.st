action
deleteEmail

		| anICEndPoint |
		anICEndPoint := folder endpoint select: self folder path.
		self deleteEmailFromDisk.
		anICEndPoint deleteEmail: self
		

