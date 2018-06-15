folder selection
emailListMenu: aMenu

	aMenu
		add: ((self selectedEmail retrieveFlags at: #seen) 
			ifTrue: ['Mark as unseen'] 
			ifFalse: ['Mark as seen'])  
			action: #modifySeenFlag;
		add: ((self selectedEmail retrieveFlags at: #flagged) 
			ifTrue: ['Unflag']
			ifFalse: ['Mark as flagged'])  
			action: #modifyFlaggedFlag;
		add: 'Delete' 
			action: #deleteEmail.	
	^aMenu	