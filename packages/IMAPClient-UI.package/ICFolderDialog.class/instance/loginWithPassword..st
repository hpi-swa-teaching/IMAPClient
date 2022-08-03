action - emails
loginWithPassword: aPassword

	self unconnectedAccounts ifNotEmpty: [self login: self unconnectedAccounts first with: aPassword string]