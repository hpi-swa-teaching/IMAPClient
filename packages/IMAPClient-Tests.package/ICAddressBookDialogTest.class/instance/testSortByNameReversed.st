sorting entries
testSortByNameReversed

	self addressBookDialog sortByName.
	self addressBookDialog sortByName.
	self assert: self addressBook equals: self expectedSortedByName reversed