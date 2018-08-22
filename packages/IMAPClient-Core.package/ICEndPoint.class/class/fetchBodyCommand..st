commands
fetchBodyCommand: messageId

	^ {self protocolCommandStart . 'FETCH' . messageId . 'body[TEXT]'} joinSeparatedBy: self protocolBlank