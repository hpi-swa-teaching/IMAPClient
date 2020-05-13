parsing
parse: aString forHeaderChunks: aHeaderChunksCollection forEmail: anEmail

	(aString includesSubstring: 'UID')	
		ifTrue: [anEmail uniqueID: ((aString subStrings: ' ') second)]
		ifFalse: [self continueHeaderChunks: aHeaderChunksCollection withLine: aString]