commands
logoutCommand

	^ {self protocolCommandStart . 'LOGOUT'} joinSeparatedBy: self protocolBlank