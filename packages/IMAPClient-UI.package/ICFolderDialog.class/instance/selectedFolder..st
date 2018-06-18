accessing
selectedFolder: aFolder

	selectedFolder := aFolder.
	self changed: #selectedFolder.
	self changed: #emailsOfSelectedFolder