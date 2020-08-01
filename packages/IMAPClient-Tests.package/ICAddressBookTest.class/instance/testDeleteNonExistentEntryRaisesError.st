delete entries
testDeleteNonExistentEntryRaisesError

	self should: [self addressBook remove: self emailAddress] raise: NotFound