login
connectAndLoginWith: anICAccountInfo

	self accountInfo: anICAccountInfo.
	[self 
		connect;
		login]
	valueWithin: 30 seconds 
	onTimeout: [self handleTimeout]