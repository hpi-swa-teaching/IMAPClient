commands
fetchFlagsCommand: messageID

	^ {self protocolCommandStart . 'FETCH' .messageID . '(FLAGS)' } joinSeparatedBy: self protocolBlank