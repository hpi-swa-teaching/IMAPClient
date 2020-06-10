accessing
expungeEmails
	
	| anICEndPoint |
	
	anICEndPoint := self endpoint select: self path.
	anICEndPoint expungeEmail