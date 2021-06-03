action - emails
openEmail: anICEmail
	
	anICEmail open.
	self selectedFolder retrieveFlagsFor: anICEmail.
	self triggerEmailChanges