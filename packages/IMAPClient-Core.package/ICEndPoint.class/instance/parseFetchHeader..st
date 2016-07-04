login
parseFetchHeader: headerLines

	| email headerData headerChunk |
	email := ICEmailObject new.
	headerData := headerLines copyFrom: 2 to: headerLines size - 2.
	headerChunk := OrderedCollection new.
	
	headerData do: [ :line |
		((self startsNewHeaderChunk: line) & (headerChunk notEmpty))
			ifTrue: [ self parseHeaderChunk: headerChunk for: email.
				headerChunk removeAll ].
			headerChunk add: line ].
	self parseHeaderChunk: headerChunk for: email.
	^ email