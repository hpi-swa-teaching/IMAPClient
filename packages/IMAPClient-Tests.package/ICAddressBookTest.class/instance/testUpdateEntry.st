as yet unclassified
testUpdateEntry

	| newFirstName newLastName newEmail refreshedAddressBookEntry |
	newFirstName := 'Obi-Wan'.
	newLastName := 'Kenobi'.
	newEmail := 'maytheforce@bewith.you'.
	
	self addressBook add: self addressBookEntry.
	
	self addressBook update: self addressBookEntry with: newFirstName andWith: newLastName andWith: newEmail.
	
	refreshedAddressBookEntry := self addressBook find: self addressBookEntry.
	
	self assert: refreshedAddressBookEntry firstName  equals: newFirstName.
	self assert: refreshedAddressBookEntry lastName  equals: newLastName.
	self assert: refreshedAddressBookEntry email  equals: newEmail
	