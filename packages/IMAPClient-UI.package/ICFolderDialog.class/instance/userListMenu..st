toolbuilder
userListMenu: aMenu

	self selectedEndPoint ifNil: [^ aMenu].
	
	aMenu
		add: 'Edit' action: [self editAccountButton: self selectedEndPoint];
		add: 'Delete' action: [self deleteAccountButton: self selectedEndPoint].
	
	^ aMenu