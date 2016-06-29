login
parseFetchHeader

	| email headerData headerChunk |
	email := ICEmailObject new.
	headerData := self lastResponse copyFrom: 2 to: self lastResponse size - 2.
	headerChunk := OrderedCollection new.
	
	headerData do: [ :line |
		((self startsNewHeaderChunk: line) & (headerChunk notEmpty))
			ifTrue: [ self parseHeaderChunk: headerChunk for: email.
				headerChunk removeAll ].
			headerChunk add: line ].
	self parseHeaderChunk: headerChunk for: email.
	^ email