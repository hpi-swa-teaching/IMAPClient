crud
change: anAddressBookEntry with: newEmail

	| entryToUpdate |
	entryToUpdate := self find: anAddressBookEntry.
	
	entryToUpdate email: newEmail