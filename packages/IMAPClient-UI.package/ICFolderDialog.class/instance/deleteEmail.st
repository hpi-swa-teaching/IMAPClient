email selection
deleteEmail
	
	self selectedEmail retrieveFlags.
	
	(self selectedEmail deleted)
		ifTrue: [self selectedEmail expungeEmails]
		ifFalse: [self selectedEmail deleteEmail].
		
	self selectedEmail: nil.
	self
		changed: #emailsOfSelectedFolder;
		changed: #childFolders;
		changed: #emailAccounts