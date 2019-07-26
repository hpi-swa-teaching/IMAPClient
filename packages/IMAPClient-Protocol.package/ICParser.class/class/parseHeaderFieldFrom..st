parsing
parseHeaderFieldFrom: aHeaderChunk

	| headerField |
	headerField := (aHeaderChunk first subStrings: ' ') first.
	(headerField includesSubString: ':') ifTrue: [headerField := headerField allButLast].

	^ headerField