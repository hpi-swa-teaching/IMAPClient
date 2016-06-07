commands
noopCommand

	^ {self protocolCommandStart . 'NOOP'} joinSeparatedBy: self protocolBlank