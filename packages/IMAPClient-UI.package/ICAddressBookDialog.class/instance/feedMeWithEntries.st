action
feedMeWithEntries

	self addressBook feedMeWithEntries: self emailAccounts.
	self	changed: #addressBook