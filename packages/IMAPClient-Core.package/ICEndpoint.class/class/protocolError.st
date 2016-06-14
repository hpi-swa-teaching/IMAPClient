responses
protocolError

	^ { self protocolCommandStart . 'BAD' } joinSeparatedBy: self protocolBlank