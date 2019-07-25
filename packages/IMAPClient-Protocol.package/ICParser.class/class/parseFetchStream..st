parsing
parseFetchStream: aStream

	| emails id octedSize currentChar |

	emails := Dictionary new.
	
	[aStream atEnd] whileFalse: [
		aStream next: 2.
		id := aStream nextDelimited: Character space.
		aStream next: 7.
		
		emails at: id put: (String streamContents: [:email |
			email nextPutAll: (aStream nextDelimited: ${).
			octedSize := (aStream nextDelimited: $}) asNumber.
			
			[octedSize > 0] whileTrue: [
				currentChar := (aStream next: 1) asCharacter.
				octedSize := octedSize - 1.
				(currentChar = Character cr) ifTrue: [octedSize := octedSize - 1].
				email nextPut: currentChar].
			
			email nextPutAll: (aStream nextDelimited: $)).
			aStream next: 1
		])
	].
	
	
	 ^ emails