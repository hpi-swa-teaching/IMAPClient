initialize-release
initialize
	
	| addressBookEntry |
	addressBookEntry := ICAddressBookEntry new.
	
	addressBookEntry email: 'test@test.de'.
	
	self addressBook add: addressBookEntry
	