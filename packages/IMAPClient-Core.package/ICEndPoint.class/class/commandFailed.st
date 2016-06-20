responses
commandFailed

	^ { self protocolCommandStart . 'NO' } joinSeparatedBy: self protocolBlank