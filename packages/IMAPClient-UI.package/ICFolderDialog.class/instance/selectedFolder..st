accessing
selectedFolder: aFolder

	selectedFolder := aFolder.
	self selectedEmail: nil.
	self 
		changed: #selectedFolder;
		changed: #emailsOfSelectedFolder