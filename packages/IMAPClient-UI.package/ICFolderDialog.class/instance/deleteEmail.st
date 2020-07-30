email selection
deleteEmail
	
	self selectedEndpoint deleteEmail: self selectedEmail.
		
	self selectedEmail: nil.
	self triggerEmailChanges