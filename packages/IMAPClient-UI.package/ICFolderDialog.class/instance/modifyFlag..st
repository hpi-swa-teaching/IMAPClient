flags
modifyFlag: aFlag
	
	self selectedEmail modifyFlag: aFlag.
	self selectedEmail retrieveFlags.
	
	self
		changed: #emailsOfSelectedFolder;
		changed: #childFolders;
		changed: #emailAccounts