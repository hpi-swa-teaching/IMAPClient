action
initializeEmailAddresses

	self addressBook addEntries: self emailAccounts.
	self sortByName.
	self changed: #addressBook