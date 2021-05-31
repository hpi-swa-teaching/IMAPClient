find entries
testFindNonExistentEntryRaisesError

	self should: [self addressBook find: self emailContact] raise: Error