commands
expungeEmail: messageId

	^ {self protocolCommandStart . 'EXPUNGE' . messageId} joinSeparatedBy: self protocolBlank	
