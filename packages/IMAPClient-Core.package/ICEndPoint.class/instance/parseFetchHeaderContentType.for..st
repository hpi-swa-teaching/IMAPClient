protocol parse
parseFetchHeaderContentType: aHeaderChunk for: anEmail
	| answer |
	
	answer := (aHeaderChunk first subStrings: ' ') allButFirst joinSeparatedBy: ' '.
	answer := answer , String cr, String space, aHeaderChunk second.
	anEmail contentType: answer
	