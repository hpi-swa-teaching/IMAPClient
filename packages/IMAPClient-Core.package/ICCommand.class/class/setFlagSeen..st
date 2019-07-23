commands
setFlagSeen: messageId

	^ {ICEndPoint protocolCommandStart . 'STORE' . messageId . '+FLAGS \Seen'} 
		joinSeparatedBy: ICEndPoint protocolBlank