as yet unclassified
testDeleteNonExistentEntryRaisesError
	self should: [self addressBook delete: self addressBookEntry] raise: NotFound.