commands
setFlagSeen: messageId

	^ {self protocolCommandStart . 'STORE' . messageId . '+FLAGS \Seen'} joinSeparatedBy: self protocolBlank