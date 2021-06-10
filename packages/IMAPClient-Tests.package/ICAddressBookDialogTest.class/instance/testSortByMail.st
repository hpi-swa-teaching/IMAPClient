sorting entries
testSortByMail

	self addressBookDialog sortByMail.
	self assert: self addressBook equals: self expectedSortedByMail.