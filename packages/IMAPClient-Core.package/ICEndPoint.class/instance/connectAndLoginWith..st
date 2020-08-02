login
connectAndLoginWith: anICAccountInfo

	self accountInfo: anICAccountInfo.

	[self
		connect;
		login]
	valueWithin: 5 seconds 
	onTimeout: [
		(self fatalErrorOccured)
			ifFalse: [
				self inform: 'Connection could not be established due to a timeout'.
				self fatalErrorOccured: true]]