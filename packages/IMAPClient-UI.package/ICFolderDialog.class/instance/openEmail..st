email selection
openEmail: anICEmail
	
	anICEmail open.
		
	anICEmail isFlaggable
		ifTrue: [
			selectedEmail retrieveFlags.
			self
				changed: #emailsOfSelectedFolder;
				changed: #childFolders;
				changed: #emailAccounts]