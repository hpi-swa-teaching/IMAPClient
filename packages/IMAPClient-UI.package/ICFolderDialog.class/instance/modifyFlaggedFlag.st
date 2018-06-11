flags
modifyFlaggedFlag

	selectedEmail modifyFlag: #flagged.
	selectedEmail flagged: (selectedEmail retrieveFlags at: #flagged).
	selectedEmail saveInMaildir.
	self changed: #emailsOfSelectedFolder