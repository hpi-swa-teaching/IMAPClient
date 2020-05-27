toolbuilder
addressBookEntriesMenu: aMenu

	self selectedAddressBookEntry ifNil: [^ aMenu ].
	
	aMenu
		add: (self labelForDeletionAction: self selectedAddressBookEntry email)
				action: #deleteAddressBookEntry.
				
	^ aMenu
