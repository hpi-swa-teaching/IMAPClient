action
initializeMailEmailAddresses
	
	self addressBook feedMeWithEntries: self emailAccounts.
	self sortByName.
	self changed: #addressBook