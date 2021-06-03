login
connectAndLoginWith: anICAccountInfo

	self accountInfo: anICAccountInfo.
	[self 
		connect;
		login]
	valueWithin: 10 seconds 
	onTimeout: [self handleTimeout]