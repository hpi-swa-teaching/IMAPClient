toolbuilder
addressBookEntriesMenu: aMenu

	self selectedAddressBookEntry ifNil: [^ aMenu ].
	
	aMenu
		add: (self labelForDeletionAction)
				action: #deleteAddressBookEntry.
				
	^ aMenu
