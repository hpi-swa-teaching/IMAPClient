action - emails
deleteEmail

	self selectedEndpoint deleteEmail: self selectedEmail.
	self selectedEmail: nil.
	self triggerEmailChanges