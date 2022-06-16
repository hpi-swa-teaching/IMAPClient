parsing
chop: aHeaderString forEmail: anEmail

	| headerChunks |
	headerChunks := OrderedCollection new.
	(aHeaderString subStrings: Character cr asString) do: [:line | self parse: line forHeaderChunks: headerChunks forEmail: anEmail].
	
	^ headerChunks