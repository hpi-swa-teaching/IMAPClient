toolbuilder
emailListMenu: aMenu

	self selectedEmail ifNil: [^ aMenu].
	
	"update the flags of the mail"
	self selectedFolder retrieveFlagsFor: self selectedEmail.
	
	aMenu
		add: ((self selectedEmail seen) 
			ifTrue: ['Mark as unseen'] 
			ifFalse: ['Mark as seen'])  
			action: [self modifyFlag: #seen];
		add: ((self selectedEmail flagged) 
			ifTrue: ['Unflag']
			ifFalse: ['Mark as flagged'])  
			action: [self modifyFlag: #flagged].

	(self selectedEmail deleted)
		ifFalse: [aMenu add: 'Delete mail' action: #deleteEmail].
		
	aMenu add: 'Move to ...' subMenu: self folderListMenu.
		
	^ aMenu