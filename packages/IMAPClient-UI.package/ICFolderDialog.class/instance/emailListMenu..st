folder selection
emailListMenu: aMenu
	
	"update the flags of the mail"
	self selectedEmail retrieveFlags.
	
	aMenu
		add: ((self selectedEmail seen) 
			ifTrue: ['Mark as unseen'] 
			ifFalse: ['Mark as seen'])  
			action: [self modifyFlag: #seen];
		add: ((self selectedEmail flagged) 
			ifTrue: ['Unflag']
			ifFalse: ['Mark as flagged'])  
			action: [self modifyFlag: #flagged];
		add: (self labelForDeletionAction: self selectedEmail folder name)
			action: #deleteEmail;
		add: 'Move to ...' subMenu: self folderListMenu.	
		
	^ aMenu