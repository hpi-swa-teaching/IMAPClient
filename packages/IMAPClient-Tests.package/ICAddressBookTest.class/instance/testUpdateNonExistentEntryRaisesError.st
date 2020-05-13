as yet unclassified
testUpdateNonExistentEntryRaisesError

	| newFirstName newLastName newEmail |
	newFirstName := 'Obi-Wan'.
	newLastName := 'Kenobi'.
	newEmail := 'maytheforce@bewith.you'.
		
	self should: [self addressBook update: self addressBookEntry with: newFirstName andWith: newLastName andWith: newEmail] raise: NotFound
	