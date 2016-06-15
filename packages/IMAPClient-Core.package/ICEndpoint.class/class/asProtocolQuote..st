commands
asProtocolQuote: message

	 ((message beginsWith: self protocolQuote) and: (message endsWith:  self protocolQuote)) ifTrue: [ ^ message ].
	^ self protocolQuote, message, self protocolQuote 