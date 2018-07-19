email selection
deleteEmail
	selectedEmail retrieveFlags.
	(selectedEmail deleted)
		ifTrue: [selectedEmail expungeEmails]
		ifFalse: [selectedEmail deleteEmail].
		
	self selectedEmail: nil.
	self
		changed: #emailsOfSelectedFolder;
		changed: #childFolders;
		changed: #emailAccounts