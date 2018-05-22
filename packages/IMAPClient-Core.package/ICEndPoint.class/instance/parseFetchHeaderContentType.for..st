protocol parse
parseFetchHeaderContentType: aHeaderChunk for: anEmail

	anEmail contentType: ((aHeaderChunk first subStrings: ' ') allButFirst joinSeparatedBy: ' ')