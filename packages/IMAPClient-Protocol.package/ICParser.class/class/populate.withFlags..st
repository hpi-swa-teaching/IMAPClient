parsing
populate: anEmail withFlags: aHeaderChunk

	anEmail seen: (aHeaderChunk includesSubString: '\Seen').
	anEmail flagged: (aHeaderChunk includesSubString: '\Flagged').
	anEmail deleted: (aHeaderChunk includesSubString: '\Deleted')