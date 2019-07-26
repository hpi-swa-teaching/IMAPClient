read file
recipientsFrom: aJsonObject

	aJsonObject
		ifNil: [^ nil]
		ifNotNil: [^ aJsonObject asOrderedCollection]
