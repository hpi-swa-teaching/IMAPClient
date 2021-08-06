action - emails
openEmail: anEmail
	
	ICEmailDialog openWith: anEmail.
	self selectedFolder switchFlag: #seen for: anEmail to: true.
	self selectedFolder switchFlag: #seen for: anEmail to: true.
	self triggerEmailChanges
