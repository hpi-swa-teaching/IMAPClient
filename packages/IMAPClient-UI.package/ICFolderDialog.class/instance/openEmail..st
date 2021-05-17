action - emails
openEmail: anICEmail
	
	"["anICEmail open.
	self selectedFolder retrieveFlagsFor: anICEmail.
	self triggerEmailChanges"]
	on: Error ConnectionClosed 
	do: [:e | self inform: self class loadEmailBodyFailure]"