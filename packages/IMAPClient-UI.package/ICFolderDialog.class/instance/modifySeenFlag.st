flags
modifySeenFlag

	selectedEmail modifyFlag: #seen.
	selectedEmail seen: (selectedEmail retrieveFlags at: #seen).
	self changed: #emailsOfSelectedFolder