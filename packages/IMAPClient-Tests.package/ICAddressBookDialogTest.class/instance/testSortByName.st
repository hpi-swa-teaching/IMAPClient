sorting entries
testSortByName

	self addressBookDialog sortByName.
	self assert: self addressBook equals: self expectedSortedByName