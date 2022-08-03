action - emails
loginWithPassword: aText

	self unconnectedAccounts ifNotEmpty: [self login: self unconnectedAccounts first with: aText string]