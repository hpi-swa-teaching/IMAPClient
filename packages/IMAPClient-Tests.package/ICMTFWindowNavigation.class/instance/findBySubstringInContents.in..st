finder
findBySubstringInContents: aString in: aSubject

	|morphWrapper|
	morphWrapper := aSubject findByCriteria: [ :morph |
		(morph respondsTo: #contents) and: [(morph contents respondsTo: #includesSubstring:)and:[morph contents includesSubstring: aString] ]].
	self assert: morphWrapper 
		morphs size <= 1 
		description: 'Bad Condition! Multiple morphs found.'.
	^ morphWrapper morphs asOrderedCollection
	