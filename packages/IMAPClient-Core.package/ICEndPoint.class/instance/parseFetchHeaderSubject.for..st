protocol parse
parseFetchHeaderSubject: aHeaderChunk for: anEmail

	anEmail subject: ((aHeaderChunk first subStrings: ' ') allButFirst joinSeparatedBy: ' ')