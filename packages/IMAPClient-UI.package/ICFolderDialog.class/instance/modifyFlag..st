action - emails
modifyFlag: aFlag
	
	self selectedFolder modifyFlag: aFlag for: self selectedEmail.
	self selectedFolder retrieveFlagsFor: self selectedEmail.
	self triggerEmailChanges