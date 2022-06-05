action - emails
moveEmail: aFolderName
	
	self selectedEndpoint moveEmail: self selectedEmail to: aFolderName.
	self selectedEmail: nil.
	self triggerEmailChanges