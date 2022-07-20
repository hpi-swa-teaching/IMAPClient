action - emails
updateProcess

	| successful |
	successful := true.
	[self emailAccounts
		do: [:anICEndpoint | successful := successful
						and: [anICEndpoint rootFolder
								startUpdateWithLoadedEmails:  anICEndpoint collectAllEmails
								showProgress: true
								with: [self progressCallback]]]]
		on: ConnectionClosed
		do: [:error | self inform: error asString].
	successful
		ifTrue: [self updateSynchTime].
	self triggerEmailChanges