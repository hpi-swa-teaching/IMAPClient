commands
loginCommand

	^ {ICEndPoint protocolCommandStart . 'LOGIN'} joinSeparatedBy: ICEndPoint protocolBlank