as yet unclassified
testChangeNonExistentEntryRaisesError

	| newEmail |
	newEmail := 'maytheforce@bewith.you'.
	
	self should: [self addressBook change self addressBookEntry with: newEmail] raise: Error