commands
setSeenFlag: messageId

	^ {self protocolCommandStart . 'STORE' . messageId . '+FLAGS \Seen'} joinSeparatedBy: self protocolBlank