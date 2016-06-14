responses
commandSucceeded

	^ { self protocolCommandStart . 'OK' } joinSeparatedBy: self protocolBlank