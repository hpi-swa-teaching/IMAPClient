sorting entries
testSortByMail

	self addressBookDialog sortByMail.
	self assert: self addressBook asOrderedCollection equals: self expectedSortedByMail.