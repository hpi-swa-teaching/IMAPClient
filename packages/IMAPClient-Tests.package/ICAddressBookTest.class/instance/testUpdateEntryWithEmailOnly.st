as yet unclassified
testUpdateEntryWithEmailOnly
	| newEmail refreshedAddressBookEntry |
	newEmail := 'maytheforce@bewith.you'.
	
	self addressBook add: self addressBookEntry.
	
	self addressBook update: self addressBookEntry withEmail: newEmail.
	
	refreshedAddressBookEntry := self addressBook find: self addressBookEntry.
	
	self assert: refreshedAddressBookEntry firstName  equals: self addressBookEntry firstName.
	self assert: refreshedAddressBookEntry lastName  equals: self addressBookEntry lastName.
	self assert: refreshedAddressBookEntry email  equals: newEmail.
	