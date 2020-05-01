email selection
openEmail: anICEmail
	
	[anICEmail open.	
	self selectedEmail retrieveFlags.
	self
		changed: #emailsOfSelectedFolder;
		changed: #childFolders;
		changed: #emailAccounts] 
	on: Error
	do: [:e | self inform: self class loadEmailBodyFailure]