email selection
moveEmail: aFolder

	self selectedEmail moveEmail: aFolder.
	self selectedEmail: nil.
	self
		changed: #emailsOfSelectedFolder;
		changed: #childFolders;
		changed: #emailAccounts