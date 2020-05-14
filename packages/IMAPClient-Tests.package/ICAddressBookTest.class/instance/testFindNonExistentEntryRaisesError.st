as yet unclassified
testFindNonExistentEntryRaisesError

	self should: [self addressBook find: self addressBookEntry] raise: Error