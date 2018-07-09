email selection
moveEmail: aFolder

	selectedEmail moveEmail: aFolder.
	self selectedEmail: nil.
	self
		changed: #emailsOfSelectedFolder;
		changed: #childFolders;
		changed: #emailAccounts