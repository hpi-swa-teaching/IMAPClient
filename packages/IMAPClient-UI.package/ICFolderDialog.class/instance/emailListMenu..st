toolbuilder
emailListMenu: aMenu

	self selectedEmail ifNil: [^ aMenu].
	
	self selectedFolder retrieveFlagsFor: self selectedEmail.
	
	aMenu
		add: (self selectedEmail seen ifTrue: ['Mark as unseen'] ifFalse: ['Mark as seen'])
			action: [self toggleFlag: #seen];
		add: (self selectedEmail flagged ifTrue: ['Unflag'] ifFalse: ['Mark as flagged'])
			action: [self toggleFlag: #flagged].
	
	self selectedEmail deleted ifFalse: [aMenu add: 'Delete mail' action: #deleteEmail].
	
	aMenu add: 'Move to ...' subMenu: self folderListMenu.
	
	aMenu add: 'Move all to ...' subMenu: self folderListMenuMoveAll.
	
	^ aMenu