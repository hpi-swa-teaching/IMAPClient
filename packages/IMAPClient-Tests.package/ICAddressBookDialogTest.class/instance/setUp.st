running
setUp
	
	self contactList: 
		{(ICContact newWith: 'erika.musterfrau@rocks.de' with: 'Erika Musterfrau') asString.
		  (ICContact newWith: 'max.mustermann@rocks.de' with: 'Max Mustermann') asString.
		  (ICContact newWith: 'info@musterfirma.de' with: 'Musterfirma GmbH') asString.} 
		asOrderedCollection.
	
	self addressBook: (ICAddressBook new: 10).
	self addressBook addAll: contactList.
		
	self emailAccounts: ICMockEndpoint new asOrderedCollection.
	
	self addressBookDialog: (ICAddressBookDialog openWith: emailAccounts)