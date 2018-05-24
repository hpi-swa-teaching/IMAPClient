email selection
openEmail: anICEmail
	
	anICEmail open.
	anICEmail isFlaggable
		ifTrue: [self changed: #emailsOfSelectedFolder]