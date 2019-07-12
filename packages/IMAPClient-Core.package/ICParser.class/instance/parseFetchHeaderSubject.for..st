as yet unclassified
parseFetchHeaderSubject: aHeaderChunk for: anEmail

	| list |
	
	list := ((aHeaderChunk joinSeparatedBy: ' ') subStrings: ((Character tab) asString)).
	list := ((list joinSeparatedBy: ' ') subStrings: ' ').
	anEmail subject: (list allButFirst joinSeparatedBy: ' ') decodeMimeHeader