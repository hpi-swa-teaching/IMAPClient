folder selection
selectedFolder: anObject

	selectedFolder := anObject.
	self changed: #selectedFolder.
	self changed: #emailsOfSelectedFolder.