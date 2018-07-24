get emails
loadOlderEmailsProcess

	self selectedFolder loadOlderMails.

	self
		changed: #emailsOfSelectedFolder;
		changed: #childFolders;
		changed: #emailAccounts