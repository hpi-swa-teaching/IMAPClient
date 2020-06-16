as yet unclassified
testFindNonExistentEntryRaisesError

	self should: [self addressBook find: self emailAddress] raise: Error