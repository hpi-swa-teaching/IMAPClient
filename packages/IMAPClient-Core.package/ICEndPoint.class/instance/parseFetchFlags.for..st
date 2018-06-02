protocol parse
parseFetchFlags: aHeaderChunk for: anEmail

	anEmail seen: ((aHeaderChunk at: 1) includesSubstring: '\Seen').
	anEmail flagged: ((aHeaderChunk at: 1) includesSubstring: '\Flagged')
	
	
	