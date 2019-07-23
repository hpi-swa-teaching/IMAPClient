commands
allUIDs

	^ {ICEndPoint protocolCommandStart . 'UID SEARCH ALL'} joinSeparatedBy: ICEndPoint protocolBlank