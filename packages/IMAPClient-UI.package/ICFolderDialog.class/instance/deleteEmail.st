email selection
deleteEmail
	
	self selectedEmail deleteEmail.
		
	self selectedEmail: nil.
	self triggerEmailChanges