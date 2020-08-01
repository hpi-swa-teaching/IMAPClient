action - emails
openEmail: anICEmail
	
	[anICEmail open.	
	self selectedEmail retrieveFlags.
	self triggerEmailChanges]
	on: Error
	do: [:e | self inform: self class loadEmailBodyFailure]