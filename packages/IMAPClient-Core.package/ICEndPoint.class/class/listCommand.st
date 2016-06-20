commands
listCommand

	^ {self protocolCommandStart . 'LIST'} joinSeparatedBy: self protocolBlank