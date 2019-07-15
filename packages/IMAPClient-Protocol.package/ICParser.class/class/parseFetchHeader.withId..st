parsing
parseFetchHeader: aHeaderString withId: aMessageID

	| email headerData headerChunks |
	
	email := ICEmail new.
	email messageID: aMessageID.
			
	headerData := aHeaderString subStrings: Character cr asString.		
	headerChunks := OrderedCollection new.
	
	headerData do: [:line |
		(line includesSubString: 'UID')	
			ifTrue: [email uniqueID: ((line subStrings: ' ') second)]
			ifFalse: [
				(self startsNewHeaderChunk: line)
					ifTrue: [headerChunks add: {line} asOrderedCollection]
					ifFalse: [
						headerChunks ifNotEmpty: [
							headerChunks last add: line]]]].
			
	headerChunks do: [:chunk |
		self parseHeaderChunk: chunk for: email].

	^ email