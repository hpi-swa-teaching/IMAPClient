parsing
populate: anEmail withFlags: aHeaderChunk

	anEmail seen: (aHeaderChunk includesSubstring: '\Seen').
	anEmail flagged: (aHeaderChunk includesSubString: '\Flagged').
	anEmail deleted: (aHeaderChunk includesSubString: '\Deleted')