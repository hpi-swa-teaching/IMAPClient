parsing
readEmailContentCharacterFrom: aStream for: anEmailString

	"returns countable number of characters read"
	| char |

	char := (aStream next) asCharacter.
	anEmailString nextPut: char.
	(char = Character cr) ifTrue: [^2].
	^ 1