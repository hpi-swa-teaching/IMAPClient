commands
getAllUIDs

	^ {self protocolCommandStart . 'UID SEARCH ALL'} joinSeparatedBy: self protocolBlank