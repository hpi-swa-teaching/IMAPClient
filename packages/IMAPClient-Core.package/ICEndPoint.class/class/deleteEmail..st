commands
deleteEmail: messageId

	^ {self protocolCommandStart . 'STORE' . messageId . '+FLAGS \Deleted'} joinSeparatedBy: self protocolBlank

