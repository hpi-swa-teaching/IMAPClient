flags
modifyFlag: aFlag
	
	self selectedEmail modifyFlag: aFlag.
	self selectedEmail retrieveFlags.
	self triggerEmailChanges.