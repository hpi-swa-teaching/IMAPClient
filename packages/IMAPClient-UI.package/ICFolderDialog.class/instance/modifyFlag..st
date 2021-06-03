action - emails
modifyFlag: aFlag
	
	self selectedFolder modifyFlag: aFlag for: self selectedEmail.
	self triggerEmailChanges