running
setUp

	| endpoint |
	self contactList: {
		(ICContact newWith: 'erika.musterfrau@rocks.de' with: 'Erika Musterfrau') asString.
		(ICContact newWith: 'max.mustermann@rocks.de' with: 'Max Mustermann') asString.
		(ICContact newWith: 'info@musterfirma.de' with: 'Musterfirmaaa GmbH') asString} asOrderedCollection.
	
	self addressBook: ICAddressBook new.
	self addressBook removeAll.
	self addressBook addAll: self contactList.
	
	endpoint := ICMockEndpoint new rootFolder: ICFolder new.
	self emailAccounts: endpoint asOrderedCollection.
	
	self addressBookDialog: (ICAddressBookDialog openWith: self emailAccounts).
	self wantsToTest: self addressBookDialog