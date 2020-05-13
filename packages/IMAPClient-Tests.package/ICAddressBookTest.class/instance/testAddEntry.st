as yet unclassified
testAddEntry
	self addressBook add: self addressBookEntry.
	
	self assert: self addressBook entries size equals: 1.
	