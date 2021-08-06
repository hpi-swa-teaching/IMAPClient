running
setUp
	
	self contactList: 
		{(ICContact newWith: 'erika.musterfrau@rocks.de' with: 'Erika Musterfrau') asString.
		  (ICContact newWith: 'max.mustermann@rocks.de' with: 'Max Mustermann') asString.
		  (ICContact newWith: 'info@musterfirma.de' with: 'Musterfirma GmbH') asString.} 
		asOrderedCollection.
	
	self addressBook: ICAddressBook new.
	self addressBook removeAll.
	self addressBook addAll: contactList.
	
	self addressBookDialog: ICAddressBookDialog basicNew.
	