commands
expungeEmails

	^ {self protocolCommandStart . 'EXPUNGE'} joinSeparatedBy: self protocolBlank	
