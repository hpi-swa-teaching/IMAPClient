email selection
openEmail: anICEmail
	
	
	[anICEmail open.	
	anICEmail isFlaggable
		ifTrue: [
			selectedEmail retrieveFlags.
			self
				changed: #emailsOfSelectedFolder;
				changed: #childFolders;
				changed: #emailAccounts]] 
	on: Error
	do: [:sig | self inform: 'Loading Body of the Mail failed. 
		This typically happens it the Mails was moved/deleted on another device. Use Update Button to update Mailbox Status.']