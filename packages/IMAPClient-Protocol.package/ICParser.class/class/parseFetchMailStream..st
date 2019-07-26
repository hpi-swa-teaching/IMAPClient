parsing
parseFetchMailStream: aStream

	| emails id octetSize currentChar |

	emails := Dictionary new.

	[aStream atEnd] whileFalse: [
		aStream next: 2.
		id := aStream nextDelimited: Character space.
		
		aStream next: self lengthOfFetchPrefix.

		emails at: id put: (String streamContents: [:email |
			email nextPutAll: (aStream nextDelimited: ${).
			octetSize := (aStream nextDelimited: $}) asNumber ifNil: [
				self throwError: 'Octet size is not a number.'].

			[octetSize > 0] whileTrue: [
				currentChar := (aStream next) asCharacter.
				octetSize := octetSize - 1.
				(currentChar = Character cr) ifTrue: [octetSize := octetSize - 1].
				email nextPut: currentChar].

			email nextPutAll: (aStream nextDelimited: $)).
			aStream next
		])
	].

	 ^ emails