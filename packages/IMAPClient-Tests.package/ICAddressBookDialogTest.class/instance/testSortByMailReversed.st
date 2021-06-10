sorting entries
testSortByMailReversed

	self addressBookDialog sortByMail.
	self addressBookDialog sortByMail.
	self assert: self addressBook equals: self expectedSortedByMail reversed