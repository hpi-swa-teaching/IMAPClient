protocol parse
parseFetchHeader: headerLines

	| email headerData headerChunk |
	email := ICEmail new.
	email messageID: (headerLines first subStrings: ' ') second.
	headerData := headerLines copyFrom: 2 to: headerLines size - 2.
	headerChunk := OrderedCollection new.
	
	headerData do: [ :line |
		((self startsNewHeaderChunk: line) & (headerChunk notEmpty))
			ifTrue: [ self parseHeaderChunk: headerChunk for: email.
				headerChunk removeAll ].
			headerChunk add: line ].
	self parseHeaderChunk: headerChunk for: email.
	^ email