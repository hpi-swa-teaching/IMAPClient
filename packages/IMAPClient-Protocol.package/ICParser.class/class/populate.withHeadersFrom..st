parsing
populate: anEmail withHeadersFrom: aHeaderChunk

	| headerField aHeaderContentChunk method |
	
	headerField := (aHeaderChunk first subStrings: ' ') first.
	(headerField includesSubString: ':') ifTrue: [headerField := headerField allButLast].
	
	aHeaderContentChunk := ((aHeaderChunk joinSeparatedBy: ' ')
		copyReplaceFrom: 1 
		to: (aHeaderChunk first indexOf: $:) 
		with: String empty) withoutLeadingBlanks.
	
	method := 	(self parseMethods at: headerField ifAbsent: nil).
	method ifNil: [Transcript show: 'WARNING: No method for parsing Header field:', headerField; cr]
		ifNotNil: [method value: aHeaderContentChunk value: anEmail]