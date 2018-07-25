action
moveEmail: aFolder 

	| anICEndPoint |
		
	anICEndPoint := folder endpoint select: self folder path.
	self deleteEmailFromDisk.
	anICEndPoint moveEmail: self to: aFolder