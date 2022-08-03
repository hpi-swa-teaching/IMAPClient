running
setUp
	
	self addressBook: ICAddressBook new.
	self addressBook removeAll.
	self addressBook addAll: self contactList.
	
	self emailAccounts: {ICMockEndpoint new} asOrderedCollection.
	
	self addressBookDialog: (ICAddressBookDialog openWith: self emailAccounts).
	self wantsToTest: self addressBookDialog