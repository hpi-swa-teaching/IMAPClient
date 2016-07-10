folder selection
selectedFolder: aFolder

	selectedFolder := aFolder.
	aFolder fetchHeaders.
	self changed: #selectedFolder.
	self changed: #emailsOfSelectedFolder.