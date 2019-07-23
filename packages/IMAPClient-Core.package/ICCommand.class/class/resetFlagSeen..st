commands
resetFlagSeen: messageId

	^ {ICEndPoint protocolCommandStart . 'STORE' . messageId . '-FLAGS \Seen'} 
		joinSeparatedBy: ICEndPoint protocolBlank