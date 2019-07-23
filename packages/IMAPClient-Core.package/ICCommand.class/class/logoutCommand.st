commands
logoutCommand

	^ {ICEndPoint protocolCommandStart . 'LOGOUT'} joinSeparatedBy: ICEndPoint protocolBlank