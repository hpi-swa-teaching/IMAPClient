commands
expungeEmail

	^ {ICEndPoint protocolCommandStart . 'EXPUNGE'} joinSeparatedBy: ICEndPoint protocolBlank	