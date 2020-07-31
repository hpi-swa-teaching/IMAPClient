email selection
moveEmail: aFolder

	self selectedEndpoint moveEmail: self selectedEmail to: aFolder.
	self selectedEmail: nil.
	self triggerEmailChanges