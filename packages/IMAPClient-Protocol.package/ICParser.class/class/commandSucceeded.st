responses
commandSucceeded

	^ {ICCommand protocolCommandStart . 'OK'} joinSeparatedBy: ICCommand protocolBlank