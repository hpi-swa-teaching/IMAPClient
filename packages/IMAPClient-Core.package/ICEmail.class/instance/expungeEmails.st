endpoint interaction
expungeEmails

	| anICEndPoint |
	
	anICEndPoint := self folder endpoint select: self folder path.
	anICEndPoint expungeEmail.
	self deleteEmailFromDisk