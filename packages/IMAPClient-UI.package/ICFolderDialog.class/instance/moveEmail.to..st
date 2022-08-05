action - emails
moveEmail: anEmail to: aFolder

	self selectedEndpoint moveEmail: anEmail to: aFolder.
	self selectedEmail: nil.
	self triggerEmailChanges