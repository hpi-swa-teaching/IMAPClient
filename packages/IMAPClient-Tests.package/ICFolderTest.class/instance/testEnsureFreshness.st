ensureFreshness
testEnsureFreshness

	self endpoint uids:{0} asOrderedCollection.
	self root ensureFreshness.
	self assert: self root emails size equals: 1.
	self assert: self root emails first uniqueID equals: 0