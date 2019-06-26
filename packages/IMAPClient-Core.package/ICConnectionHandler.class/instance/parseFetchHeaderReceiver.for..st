protocol parse
parseFetchHeaderReceiver: aHeaderChunk for: anEmail

	anEmail to: (aHeaderChunk collect: [:receiverLine | (receiverLine subStrings: ' ') last ])