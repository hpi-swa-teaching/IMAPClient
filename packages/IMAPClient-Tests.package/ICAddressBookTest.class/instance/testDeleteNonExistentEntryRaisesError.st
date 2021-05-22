delete entries
testDeleteNonExistentEntryRaisesError

	self should: [self addressBook remove: self emailContact] raise: NotFound