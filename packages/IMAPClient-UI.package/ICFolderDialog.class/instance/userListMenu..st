folder selection
userListMenu: aMenu

	aMenu
		add: 'Edit' action: [self editAccount: self selectedAccount string];
		add: 'Delete' action: [self deleteAccount: self selectedAccount string].
			
	^aMenu	