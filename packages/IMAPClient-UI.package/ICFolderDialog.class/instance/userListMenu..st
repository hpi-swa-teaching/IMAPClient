folder selection
userListMenu: aMenu

	aMenu
		add: 'Edit' action: [self editAccountButton: self selectedAccount];
		add: 'Delete' action: [self deleteAccountButton: self selectedAccount].
			
	^aMenu	