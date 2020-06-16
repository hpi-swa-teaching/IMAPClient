accessing
expungeEmails
	
	| anICEndPoint |
	
	self emails do: [ :email | email deleteEmailFromDisk].
	anICEndPoint := self endpoint select: self path.
	anICEndPoint expungeEmail