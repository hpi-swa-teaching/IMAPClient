toolbuilder
emailListMenu: aMenu

	self selectedEmail ifNil: [^ aMenu].
	self selectedFolder retrieveFlagsFor: self selectedEmail.
	
	aMenu
		add: self selectedEmailSeenLabel action: [self toggleFlag: #seen];
		add: self selectedEmailFlagLabel action: [self toggleFlag: #flagged].
	self selectedEmail deleted ifFalse: [aMenu add: 'Delete mail' action: #deleteEmail].
	aMenu add: 'Move to ...' subMenu: self folderListMenu.
	^ aMenu