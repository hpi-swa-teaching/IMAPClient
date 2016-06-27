protocol parse
parseFetchHeaderSender: aHeaderChunk for: anEmail

	anEmail from: aHeaderChunk second withBlanksTrimmed

	