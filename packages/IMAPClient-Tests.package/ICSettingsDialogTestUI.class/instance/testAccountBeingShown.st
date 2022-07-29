as yet unclassified
testAccountBeingShown

	self assert: (self findBySubstringInContents: self accountName in: self subject) morphs size equals: 1.