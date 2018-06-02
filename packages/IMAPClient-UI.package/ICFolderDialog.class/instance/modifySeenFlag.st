flags
modifySeenFlag

	selectedEmail modifyFlag: #seen.
	selectedEmail seen: (selectedEmail retrieveFlags at: #seen).
	selectedEmail saveInMaildir.
	self changed: #emailsOfSelectedFolder