commands
resetFlagFlagged: messageId

	^ {ICEndPoint protocolCommandStart . 'STORE' . messageId . '-FLAGS \Flagged'} 
		joinSeparatedBy: ICEndPoint protocolBlank