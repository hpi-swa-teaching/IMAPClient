protocol parse
parseFetchHeaderContentType: aHeaderChunk for: anEmail
	| answer |
	
	answer := ((aHeaderChunk  joinSeparatedBy: ' ') subStrings: ' ') allButFirst joinSeparatedBy: ' '.
	anEmail contentType: answer
	