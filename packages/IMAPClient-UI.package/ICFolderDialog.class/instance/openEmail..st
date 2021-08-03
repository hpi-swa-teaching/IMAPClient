action - emails
openEmail: anEmail

	self selectedFolder retrieveFlagsFor: anEmail.
	ICEmailDialog openWith: anEmail.
	self selectedFolder switchFlag: #seen for: anEmail to: true.
	self triggerEmailChanges
