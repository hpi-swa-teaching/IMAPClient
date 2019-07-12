as yet unclassified
parseFetchHeaderDate: aHeaderChunk for: anEmail
	
	anEmail date: ((aHeaderChunk first subStrings: ' ') allButFirst joinSeparatedBy: ' ')