action
initializeMailEmailAddresses

	self addressBook feedMeWithEntries: self emailAccounts.
	self	changed: #addressBook