commands
selectCommand: aFolder

	^ {ICEndPoint protocolCommandStart . 'SELECT' . aFolder} joinSeparatedBy: ICEndPoint protocolBlank
	