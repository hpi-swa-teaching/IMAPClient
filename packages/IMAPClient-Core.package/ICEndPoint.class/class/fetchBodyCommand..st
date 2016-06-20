commands
fetchBodyCommand: messageId

	^ {self protocolCommandStart . 'FETCH' . messageId . 'body[1.1]'} joinSeparatedBy: self protocolBlank