action - emails
openEmail: anICEmail
	
	anICEmail open.
	self selectedFolder switchFlag: #seen for: anICEmail to: true.
	self triggerEmailChanges.