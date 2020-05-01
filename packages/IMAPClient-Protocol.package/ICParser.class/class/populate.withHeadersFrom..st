parsing
populate: anEmail withHeadersFrom: aHeaderChunk

	| headerField headerContent method |
	
	headerField := self parseHeaderFieldFrom: aHeaderChunk.
	headerContent := self parseHeaderContentFrom: aHeaderChunk.
	method := 	(self parseMethods at: headerField ifAbsent: nil).
	method ifNil: [Transcript show: 'WARNING: No method for parsing Header field:', headerField; cr]
		ifNotNil: [method value: headerContent value: anEmail]