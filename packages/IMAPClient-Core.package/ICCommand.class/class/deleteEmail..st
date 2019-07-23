commands
deleteEmail: messageId

	^ {ICEndPoint protocolCommandStart . 'STORE' . messageId . '+FLAGS \Deleted'} joinSeparatedBy: ICEndPoint protocolBlank