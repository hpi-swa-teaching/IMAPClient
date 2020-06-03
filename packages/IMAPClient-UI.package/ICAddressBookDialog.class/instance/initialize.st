initialize-release
initialize

	| addressBookEntry |
	addressBookEntry := ICAddressBookEntry newWith: (self sanitizeInput: 'test@test.de').
	
	self addressBook add: addressBookEntry