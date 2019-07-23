commands
listCommand

	^ {ICEndPoint protocolCommandStart . 'LIST'} joinSeparatedBy: ICEndPoint protocolBlank