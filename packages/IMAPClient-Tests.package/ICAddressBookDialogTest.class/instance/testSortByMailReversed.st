sorting entries
testSortByMailReversed

	self addressBookDialog sortByMail.
	self addressBookDialog sortByMail.
	self assert: self addressBook asOrderedCollection equals: self expectedSortedByMail reversed