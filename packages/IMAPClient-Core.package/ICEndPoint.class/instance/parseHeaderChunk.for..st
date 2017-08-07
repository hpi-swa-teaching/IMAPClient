protocol parse
parseHeaderChunk: aHeaderChunk for: anEmail
	| headerField method |
	headerField := (aHeaderChunk first subStrings: ':') first.
	method := 	(self parseMethods at: headerField ifAbsent: nil).
	method isNil
		ifTrue:
			[Transcript show: 'WARNING: No method for parsing Header field:', headerField; cr.]
		ifFalse: 
			[method value: aHeaderChunk value: anEmail].