running
setUp
	self addressBook: (ICAddressBook new: 10).
	
	self emailContact: 
		(ICContact newWith: 'erika.musterfrau@rocks.de' with: 'Erika Musterfrau') asString.
	
	self emailAccounts: ICMockEndpoint new asOrderedCollection