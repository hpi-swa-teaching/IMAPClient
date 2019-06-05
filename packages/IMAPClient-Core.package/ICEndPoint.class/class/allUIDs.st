commands
allUIDs

	^ {self protocolCommandStart . 'UID SEARCH ALL'} joinSeparatedBy: self protocolBlank