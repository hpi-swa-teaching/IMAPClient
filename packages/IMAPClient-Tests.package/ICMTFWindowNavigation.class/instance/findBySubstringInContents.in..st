navigating
findBySubstringInContents: aString in: aSubject

	| contentMorphs |
	contentMorphs := aSubject findByCriteria: [:morph | (morph respondsTo: #contents) and: [(morph contents respondsTo: #includesSubstring:) and: [morph contents includesSubstring: aString]]].
	self assert: contentMorphs morphs size <= 1 description: 'Bad Condition! Multiple morphs found.'.
	^ contentMorphs