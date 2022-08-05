action - emails
deleteEmail

	self selectedEndPoint deleteEmail: self selectedEmail.
	self selectedEmail: nil.
	self triggerEmailChanges