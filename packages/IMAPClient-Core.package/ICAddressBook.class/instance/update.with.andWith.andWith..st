crud
update: anAddressBookEntry with: newFirstName andWith: newLastName andWith: newEmail

	| entryToUpdate |
	entryToUpdate := self find: anAddressBookEntry.
	
	entryToUpdate 
		firstName: newFirstName;
		lastName: newLastName;
		email: newEmail