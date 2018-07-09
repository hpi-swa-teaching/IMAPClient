flags
modifyFlag: aFlag

	selectedEmail modifyFlag: aFlag.
	(aFlag = #seen)
		ifTrue: [selectedEmail seen: (selectedEmail retrieveFlags at: aFlag)]
		ifFalse: [selectedEmail flagged: (selectedEmail retrieveFlags at: aFlag)]. 
	selectedEmail saveInMaildir.
	self
		changed: #emailsOfSelectedFolder;
		changed: #childFolders;
		changed: #emailAccounts