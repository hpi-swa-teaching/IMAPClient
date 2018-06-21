email selection
openEmail: anICEmail
	
	anICEmail open.
	selectedEmail seen: (selectedEmail retrieveFlags at: #seen).
	
	anICEmail isFlaggable
		ifTrue: [self changed: #emailsOfSelectedFolder]