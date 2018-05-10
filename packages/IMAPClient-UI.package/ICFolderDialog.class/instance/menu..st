email selection
menu: aMenu
	aMenu
		add: ((self selectedEmail seen) 
			ifTrue: ['Mark as unseen'] 
			ifFalse: ['Mark as seen'])  
			action: #setSeenFlag;
		add: ((self selectedEmail important) 
			ifTrue: ['Reset priority']
			ifFalse: ['Mark high priority'])  
			action: #setImportantFlag;
		add: 'Delete' action: #deleteEmail.	
	^aMenu	