email selection
moveEmail: aFolder

	self selectedEmail moveEmail: aFolder.
	self selectedEmail: nil.
	self triggerEmailChanges