protocol parse
parseFetchFlags: aHeaderChunk for: anEmail

	anEmail seen: ((aHeaderChunk at: 1) includesSubString: '\Seen').
	anEmail flagged: ((aHeaderChunk at: 1) includesSubString: '\Flagged')
	
	
	