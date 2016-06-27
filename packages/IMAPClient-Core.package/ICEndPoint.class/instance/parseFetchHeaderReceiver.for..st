protocol parse
parseFetchHeaderReceiver: aHeaderChunk for: anEmail

	anEmail to: (aHeaderChunk first subStrings: ' ') second

	