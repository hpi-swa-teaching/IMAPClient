toolbuilder
addressBookEntriesMenu: aMenu

	self selectedAddressBookEntry ifNil: [^ aMenu ].
	
	aMenu
		add: (self labelForDeletionAction: self selectedAddressBookEntry)
				action: #deleteAddressBookEntry.
				
	^ aMenu
