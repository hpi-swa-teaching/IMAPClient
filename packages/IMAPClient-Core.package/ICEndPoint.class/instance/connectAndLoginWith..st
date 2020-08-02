login
connectAndLoginWith: anICAccountInfo

	self accountInfo: anICAccountInfo.

	[self 
		connect;
		login]
	valueWithin: 5 seconds 
	onTimeout: [self handleTimeout]