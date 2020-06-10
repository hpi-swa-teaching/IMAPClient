as yet unclassified
testDeleteNonExistentEntryRaisesError

	self should: [self addressBook delete: self emailAddress] raise: NotFound