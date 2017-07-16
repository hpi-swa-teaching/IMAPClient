fetching
fetchBody: messageId

	self sendCommand: (self class fetchBodyCommand: messageId)