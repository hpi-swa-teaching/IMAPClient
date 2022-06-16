parsing
readEmailContentCharacterFrom: aStream for: anEmailString

	| char |
	char := aStream next asCharacter.
	anEmailString nextPut: char.
	char = Character cr ifTrue: [^ 2].
	^ 1