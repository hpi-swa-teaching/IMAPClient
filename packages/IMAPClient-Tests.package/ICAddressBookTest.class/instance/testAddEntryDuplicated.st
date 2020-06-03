as yet unclassified
testAddEntryDuplicated

	self addressBook add: self addressBookEntry.
	self addressBook add: self addressBookEntry deepCopy.
	
	self assert: self addressBook size equals: 1
	