folder selection
menu: aMenu
	aMenu
		add: ((self selectedEmail retrieveFlags at: 'seen') 
			ifTrue: ['Mark as unseen'] 
			ifFalse: ['Mark as seen'])  
			action: #modifyFlagSeen;
		add: ((self selectedEmail retrieveFlags at: 'flagged') 
			ifTrue: ['Unflag']
			ifFalse: ['Mark as flagged'])  
			action: #modifyFlagFlagged;
		add: 'TODO: Delete' action: #deleteEmail.	
	^aMenu	