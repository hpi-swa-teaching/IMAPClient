action - emails
moveEmail: anEmail to: aFolder

	self selectedEndPoint moveEmail: anEmail to: aFolder.
	self selectedEmail: nil.
	self triggerEmailChanges