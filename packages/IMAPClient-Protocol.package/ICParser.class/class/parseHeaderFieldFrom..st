parsing
parseHeaderFieldFrom: aHeaderChunk

	| headerField |
	headerField := (aHeaderChunk first subStrings: ' ') first.
	(headerField includesSubstring: ':') ifTrue: [headerField := headerField allButLast].
	
	^ headerField