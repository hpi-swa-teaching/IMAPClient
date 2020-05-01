parsing
continueHeaderChunks: aCollection withLine: aString

	(self startsNewHeaderChunk: aString)
		ifTrue: [aCollection add: {aString} asOrderedCollection]
		ifFalse: [
			aCollection ifNotEmpty: [
				aCollection last add: aString]]