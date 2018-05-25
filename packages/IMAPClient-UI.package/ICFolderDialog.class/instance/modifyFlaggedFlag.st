flags
modifyFlaggedFlag

	selectedEmail modifyFlag: #flagged.
	selectedEmail flagged: (selectedEmail retrieveFlags at: #flagged).
	self changed: #emailsOfSelectedFolder