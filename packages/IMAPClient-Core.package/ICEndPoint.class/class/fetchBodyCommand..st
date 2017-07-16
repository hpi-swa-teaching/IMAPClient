commands
fetchBodyCommand: messageId

	^ {self protocolCommandStart . 'UID FETCH' . messageId . 'body[1]'} joinSeparatedBy: self protocolBlank