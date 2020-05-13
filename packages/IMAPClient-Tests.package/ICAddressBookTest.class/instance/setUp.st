as yet unclassified
setUp
	self addressBook: ICAddressBook new.
	self addressBookEntry: ICAddressBookEntry new.
	
	self addressBookEntry firstName: 'Max'.
	self addressBookEntry lastName: 'Mustermann'.
	self addressBookEntry email: 'maxmustermann@moin.rocks'.