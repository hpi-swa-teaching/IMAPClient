email selection
openEmail: anICEmail
	
	[anICEmail open.	
	self selectedEmail retrieveFlags.
	self
		changed: #emailsOfSelectedFolder;
		changed: #childFolders;
		changed: #emailAccounts] 
	on: Error
	do: [:e | self inform: 'Loading Body of the Mail failed. 
		This typically happens it the Mails was moved/deleted on another device. Use Update Button to update Mailbox Status.'.]