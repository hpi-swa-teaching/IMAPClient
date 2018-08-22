flags
modifyFlag: aFlag

	selectedEmail modifyFlag: aFlag.
	selectedEmail retrieveFlags.
	
	self
		changed: #emailsOfSelectedFolder;
		changed: #childFolders;
		changed: #emailAccounts