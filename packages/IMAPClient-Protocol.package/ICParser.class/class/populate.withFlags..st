parsing
populate: anEmail withFlags: aHeaderChunk

	anEmail seen: (aHeaderChunk includesSubstring: '\Seen').
	anEmail flagged: (aHeaderChunk includesSubstring: '\Flagged').
	anEmail deleted: (aHeaderChunk includesSubstring: '\Deleted')