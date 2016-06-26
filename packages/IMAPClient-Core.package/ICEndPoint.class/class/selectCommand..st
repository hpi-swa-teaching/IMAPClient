commands
selectCommand: aFolder

	^ {self protocolCommandStart . 'SELECT' . aFolder} joinSeparatedBy: self protocolBlank
	