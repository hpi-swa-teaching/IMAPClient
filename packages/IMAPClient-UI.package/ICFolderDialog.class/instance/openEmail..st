action - emails
openEmail: anICEmail
	
	anICEmail open.
<<<<<<< HEAD
	self selectedFolder retrieveFlagsFor: anICEmail.
	self triggerEmailChanges
=======
	self selectedFolder switchFlag: #seen for: anICEmail to: true.
	self triggerEmailChanges.
>>>>>>> feature/all_mails_fetched
