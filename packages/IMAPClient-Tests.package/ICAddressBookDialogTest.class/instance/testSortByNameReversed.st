sorting entries
testSortByNameReversed

	self addressBookDialog sortByName.
	self addressBookDialog sortByName.
	self assert: self addressBook asOrderedCollection equals: self expectedSortedByName reversed