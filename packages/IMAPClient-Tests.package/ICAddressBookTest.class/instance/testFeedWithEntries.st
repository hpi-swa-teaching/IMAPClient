adding entries
testFeedWithEntries

	self emailAccounts do: [:account | account rootFolder: (ICFolder new emails: self class emails)].
	
	self addressBook addEntries: emailAccounts.
	
	self assert: self addressBook size equals: 1