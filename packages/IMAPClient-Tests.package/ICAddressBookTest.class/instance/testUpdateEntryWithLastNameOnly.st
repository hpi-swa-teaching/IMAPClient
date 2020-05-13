as yet unclassified
testUpdateEntryWithLastNameOnly

	| newLastName refreshedAddressBookEntry |
	newLastName := 'Skywalker'.
	
	self addressBook add: self addressBookEntry.
	
	self addressBook update: self addressBookEntry withLastName: newLastName.
	
	refreshedAddressBookEntry := self addressBook find: self addressBookEntry.
	
	self assert: refreshedAddressBookEntry firstName  equals: self addressBookEntry firstName.
	self assert: refreshedAddressBookEntry lastName  equals: newLastName.
	self assert: refreshedAddressBookEntry email  equals: self addressBookEntry email
	