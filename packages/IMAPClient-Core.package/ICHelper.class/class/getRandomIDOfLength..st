id-creation
getRandomIDOfLength: aNumber

	(aNumber=0) ifTrue: [^''].
	^self getRandomCharacter  asString , (self getRandomIDOfLength: aNumber - 1).	