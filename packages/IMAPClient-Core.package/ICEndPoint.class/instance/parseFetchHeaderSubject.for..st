protocol parse
parseFetchHeaderSubject: aHeaderChunk for: anEmail
	| list |
	list := ((aHeaderChunk joinSeparatedBy: ' ') subStrings: ((Character tab) asString)).
	list := (((list joinSeparatedBy: ' ') convertToEncoding: 'latin1') subStrings: ' ').
	Transcript show: list; cr.
	anEmail subject: (list allButFirst joinSeparatedBy: ' ').