commands
fetchBodyCommand: messageId

	^ {ICEndPoint protocolCommandStart . 'FETCH' . messageId . 'body[TEXT]'} joinSeparatedBy: ICEndPoint protocolBlank