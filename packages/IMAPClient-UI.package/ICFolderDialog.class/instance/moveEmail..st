action - emails
moveEmail: aFolderName

	self selectedEndPoint moveEmail: self selectedEmail to: aFolderName.
	self selectedEmail: nil.
	self triggerEmailChanges