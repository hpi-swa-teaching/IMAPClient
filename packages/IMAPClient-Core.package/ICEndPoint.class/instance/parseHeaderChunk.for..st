protocol parse
parseHeaderChunk: aHeaderChunk for: anEmail
	
	| headerField |
	headerField := (aHeaderChunk first subStrings: ':') first.
	(self parseMethods at: headerField) value: aHeaderChunk value: anEmail