navigating
findBySubstringInContents: aString in: aSubject

	| wrappedContentMorphs |
	wrappedContentMorphs := aSubject findByCriteria: [:morph | (morph respondsTo: #contents) and: [(morph contents respondsTo: #includesSubstring:) and: [morph contents includesSubstring: aString]]].
	self assert: wrappedContentMorphs morphs size <= 1 description: 'Bad Condition! Multiple morphs found.'.
	^ wrappedContentMorphs