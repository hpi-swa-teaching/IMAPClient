commands
expungeEmail

	^ {self protocolCommandStart . 'EXPUNGE'} joinSeparatedBy: self protocolBlank	
