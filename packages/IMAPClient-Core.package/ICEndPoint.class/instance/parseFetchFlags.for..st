protocol parse
parseFetchFlags: aHeaderChunk for: anEmail
	((aHeaderChunk at: 1) includesSubstring: '\Seen')
		ifTrue: [anEmail seen: true] 
		ifFalse: [anEmail seen: false].
		
	((aHeaderChunk at: 1) includesSubstring: '\Flagged')
		ifTrue: [anEmail important: true] 
		ifFalse: [anEmail important: false] 