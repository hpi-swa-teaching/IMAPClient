action - emails
moveEmail: aFolder

	self selectedEndpoint moveEmail: self selectedEmail to: aFolder.
	self selectedEmail: nil.
	self triggerEmailChanges