folder selection
menu: aMenu
	aMenu
		add: ((self selectedEmail seen) 
			ifTrue: ['Mark as unseen'] 
			ifFalse: ['Mark as seen'])  
			action: #modifyFlagSeen;
		add: ((self selectedEmail flagged) 
			ifTrue: ['Unflag']
			ifFalse: ['Mark as flagged'])  
			action: #modifyFlagFlagged;
		add: 'TODO: Delete' action: #deleteEmail.	
	^aMenu	