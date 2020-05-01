responses
protocolError

	^ {ICCommand protocolCommandStart . 'BAD'} joinSeparatedBy: ICCommand protocolBlank