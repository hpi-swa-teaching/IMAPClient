as yet unclassified
testChangeEntry

	| newEmail refreshedAddressBookEntry |
	newEmail := 'maytheforce@bewith.you'.
	
	self addressBook add: self addressBookEntry.
	
	self addressBook change: self addressBookEntry with: newEmail.
	
	refreshedAddressBookEntry := self addressBook find: self addressBookEntry.
	
	self assert: refreshedAddressBookEntry email  equals: newEmail
	