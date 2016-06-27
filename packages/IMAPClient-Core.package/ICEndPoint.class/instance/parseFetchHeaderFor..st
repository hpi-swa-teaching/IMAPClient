login
parseFetchHeaderFor: anEmail

	| headerData headerChunk |
	headerData := self lastResponse copyFrom: 2 to: self lastResponse size - 2.
	headerChunk := OrderedCollection new.
	
	headerData do: [ :line |
		(self startsNewHeaderChunk: line & headerChunk notEmpty)
			ifTrue: [ self parseHeaderChunk: headerChunk for: anEmail.
				headerChunk clear ].
			headerChunk add: line ].
	self parseHeaderChunk: headerChunk for: anEmail

	"^ ICEmailObject new
		to: ((self lastResponse at: 2) subStrings: ' ') second;
		from: (self lastResponse at: 4) withBlanksTrimmed;
		subject: ((((self lastResponse at: 5) subStrings: ' ') allButFirst) joinSeparatedBy: ' ');
		date: ((((self lastResponse at: 6) subStrings: ' ') allButFirst) joinSeparatedBy: ' ')."