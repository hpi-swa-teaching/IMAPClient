parsing
parseFetchHeaderReceiver: aHeaderChunk for: anEmail

	anEmail to: (aHeaderChunk subStrings: ',') asOrderedCollection