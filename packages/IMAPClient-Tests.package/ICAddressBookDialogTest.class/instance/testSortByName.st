sorting entries
testSortByName

	self addressBookDialog sortByName.
	self assert: self addressBook asOrderedCollection equals: self expectedSortedByName