as yet unclassified
testDeleteNonExistentEntryRaisesError

	self should: [self addressBook remove: self emailAddress] raise: NotFound