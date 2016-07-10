connection
fetchEmail: messageId

	| message |
	message := self fetchHeader: messageId.
	self fillBodyFor: message.
	^ message 