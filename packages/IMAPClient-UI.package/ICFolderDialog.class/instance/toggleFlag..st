action - emails
toggleFlag: aFlag

	self selectedFolder toggleFlag: aFlag for: self selectedEmail.
	self triggerEmailChanges
	