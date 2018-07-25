protocol parse
parseFetchHeaderContentTransferEncoding: aHeaderChunk for: anEmail

	| answer |
	
	answer := ((aHeaderChunk  joinSeparatedBy: ' ') subStrings: ' ') allButFirst joinSeparatedBy: ' '.
	anEmail contentTransferEncoding: answer