endpoint interaction
deleteEmail

	| anICEndPoint |
	
	anICEndPoint := self folder endpoint select: self folder path.
	self deleteEmailFromDisk.
	anICEndPoint deleteEmail: self