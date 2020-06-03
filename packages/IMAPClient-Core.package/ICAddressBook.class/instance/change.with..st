crud
change: anAddressBookEntry with: newEmail

	| entryToUpdate |
	
	entryToUpdate := self find: anAddressBookEntry.
	
	self delete: entryToUpdate.
	entryToUpdate email: newEmail.
	self add: entryToUpdate.