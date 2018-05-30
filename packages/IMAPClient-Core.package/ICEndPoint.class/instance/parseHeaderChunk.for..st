protocol parse
parseHeaderChunk: aHeaderChunk for: anEmail

	| headerField method |
	"die nächsten 3 Zeilen sind nicht so praktisch. Noch eine Altlast => langfristig ändern"
	headerField := (aHeaderChunk first subStrings: ':') first.
	method := 	(self parseMethods at: headerField ifAbsent: nil).
	method isNil
		ifTrue: [Transcript show: 'WARNING: No method for parsing Header field:', headerField; cr]
		ifFalse: [method value: aHeaderChunk value: anEmail]