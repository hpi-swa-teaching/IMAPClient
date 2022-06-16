parsing
readEmailContentFrom: aStream for: anEmailString bySize: anOctetSize

	| charsLeft |
	charsLeft := anOctetSize.
	[charsLeft > 0] whileTrue: [charsLeft := charsLeft - (self readEmailContentCharacterFrom: aStream for: anEmailString)]