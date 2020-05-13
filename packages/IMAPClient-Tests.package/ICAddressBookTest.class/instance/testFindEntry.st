as yet unclassified
testFindEntry
	self addressBook add: self addressBookEntry.
	
	self assert: (self addressBook find: self addressBookEntry) equals: self addressBookEntry.