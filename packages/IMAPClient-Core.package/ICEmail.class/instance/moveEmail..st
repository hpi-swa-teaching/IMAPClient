action
moveEmail: aFolder 

		| anICEndPoint |
		
		anICEndPoint := folder endpoint select: self folder path.
		anICEndPoint moveEmail: self to: aFolder.
		self deleteEmailFromDisk