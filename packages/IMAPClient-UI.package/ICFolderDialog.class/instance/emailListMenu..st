folder selection
emailListMenu: aMenu

	aMenu
		add: ((self selectedEmail retrieveFlags at: #seen) 
			ifTrue: ['Mark as unseen'] 
			ifFalse: ['Mark as seen'])  
			action: [self modifyFlag: #seen];
		add: ((self selectedEmail retrieveFlags at: #flagged) 
			ifTrue: ['Unflag']
			ifFalse: ['Mark as flagged'])  
			action: [self modifyFlag: #flagged];
		add: (self labelForDeletionAction: self selectedEmail folder name)
			action: #deleteEmail;
		add: 'Move to ...' subMenu: self folderListMenu.	
		
	^ aMenu