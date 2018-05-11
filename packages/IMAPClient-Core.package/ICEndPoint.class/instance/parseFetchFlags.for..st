protocol parse
parseFetchFlags: aHeaderChunk for: anEmail
	((aHeaderChunk at: 1) includesSubstring: '\Seen')
		ifTrue: [anEmail seen: true] 
		ifFalse: [anEmail seen: false].
		
	((aHeaderChunk at: 1) includesSubstring: '\Flagged')
		ifTrue: [anEmail flagged: true] 
		ifFalse: [anEmail flagged: false] 