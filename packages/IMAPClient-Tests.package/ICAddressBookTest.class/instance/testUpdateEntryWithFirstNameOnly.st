as yet unclassified
testUpdateEntryWithFirstNameOnly

	| newFirstName refreshedAddressBookEntry |
	newFirstName := 'Anakin'.
	
	self addressBook add: self addressBookEntry.
	
	self addressBook update: self addressBookEntry withFirstName: newFirstName.
	
	refreshedAddressBookEntry := self addressBook find: self addressBookEntry.
	
	self assert: refreshedAddressBookEntry firstName  equals: newFirstName.
	self assert: refreshedAddressBookEntry lastName  equals: self addressBookEntry lastName.
	self assert: refreshedAddressBookEntry email  equals: self addressBookEntry email
	