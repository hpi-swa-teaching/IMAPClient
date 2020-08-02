find entries
testFindNonExistentEntryRaisesError

	self should: [self addressBook find: self emailAddress] raise: Error