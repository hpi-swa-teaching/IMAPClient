as yet unclassified
parseFetchHeaderReceiver: aHeaderChunk for: anEmail

	anEmail to: (aHeaderChunk collect: [:receiverLine | (receiverLine subStrings: ' ') last ])