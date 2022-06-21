action - emails
loginWithPassword: aPassword

	self unconnectedAccounts isEmpty ifFalse: [self login: self unconnectedAccounts first with: aPassword string]