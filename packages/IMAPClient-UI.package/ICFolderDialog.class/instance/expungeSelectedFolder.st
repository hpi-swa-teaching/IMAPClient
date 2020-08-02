action - emails
expungeSelectedFolder

	self selectedFolder
		expungeEmails;
		update.
		
	self
		changed: #emailsOfSelectedFolder;
		changed: #childFolders;
		changed: #emailAccounts