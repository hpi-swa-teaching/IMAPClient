protocol parse
parseFetchHeaderDate: aHeaderChunk for: anEmail

	anEmail date: ((aHeaderChunk first subStrings: ' ') allButFirst joinSeparatedBy: ' ')