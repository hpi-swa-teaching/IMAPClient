commands
loginCommand

	^ {self protocolCommandStart . 'LOGIN'} joinSeparatedBy: self protocolBlank