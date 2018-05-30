protocol parse
parseFetchHeaderContentType: aHeaderChunk for: anEmail
	| answer |
	
	answer := (aHeaderChunk first subStrings: ' ') allButFirst joinSeparatedBy: ' '.
	anEmail contentType: answer
	