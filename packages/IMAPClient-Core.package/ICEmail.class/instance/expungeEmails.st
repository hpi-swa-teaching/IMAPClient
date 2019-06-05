endpoint interaction
expungeEmails

	| anICEndPoint |
	
	anICEndPoint := folder endpoint select: self folder path.
	anICEndPoint expungeEmail.
	self deleteEmailFromDisk