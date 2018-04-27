protocol parse
parseFetchHeader: headerLines withId: id
	| email headerData headerChunk |
	email := ICEmail new.
	email messageID: id.
	headerData := headerLines subStrings: ((Character cr) asString) .
	headerChunk := OrderedCollection new.
	
	headerData do: [ :line |
		(line includesSubstring: ('UID'))	ifTrue: [email uid: ((line subStrings: ' ') second)].
		((self startsNewHeaderChunk: line) & (headerChunk notEmpty))
			ifTrue: [ self parseHeaderChunk: headerChunk for: email.
				headerChunk removeAll ].
		headerChunk add: line ].
	self parseHeaderChunk: headerChunk for: email.
	^ email