accessing
update: anAddressBookEntry with: newFirstName andWith: newLastName andWith: newEmail
	| index entryToUpdate |
	index := self entries find: anAddressBookEntry.
	
	entryToUpdate := self entries at: index.
	
	entryToUpdate firstName: newFirstName.
	entryToUpdate lastName: newLastName.
	entryToUpdate email: newEmail.