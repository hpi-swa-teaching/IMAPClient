ensureFreshness
testEnsureFreshness

	self endpoint uids:{0} asOrderedCollection.
	self root ensureFreshness.
	self assert: self root emails size = 1.
	self assert: self root emails first uniqueID = 0