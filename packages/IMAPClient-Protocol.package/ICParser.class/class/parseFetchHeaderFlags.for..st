parsing
parseFetchHeaderFlags: aHeaderChunk for: anEmail

	anEmail seen: (aHeaderChunk includesSubString: '\Seen').
	anEmail flagged: (aHeaderChunk includesSubString: '\Flagged').
	anEmail deleted: (aHeaderChunk includesSubString: '\Deleted')