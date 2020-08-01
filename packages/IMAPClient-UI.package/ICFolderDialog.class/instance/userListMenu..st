toolbuilder
userListMenu: aMenu

	aMenu
		add: 'Edit' action: [self editAccountButton: self selectedEndpoint];
		add: 'Delete' action: [self deleteAccountButton: self selectedEndpoint].
			
	^ aMenu