email selection
deleteEmail
	
	self error: 'WARNING: This empties your trash and makes the selected mail unrecoverable.
		 Only proceed if you are confident you want this'.
	
	self selectedEmail retrieveFlags.
	
	(self selectedEmail deleted)
		ifTrue: [self selectedEmail expungeEmails]
		ifFalse: [self selectedEmail deleteEmail].
		
	self selectedEmail: nil.
	self
		changed: #emailsOfSelectedFolder;
		changed: #childFolders;
		changed: #emailAccounts