connection
connectAndLoginWith: anICAccountInfo

	self accountInfo: anICAccountInfo.

	[self
		connect;
		login]
	valueWithin: 2 seconds 
	onTimeout: [
		(self fatalErrorOccured)
			ifFalse: [
				UIManager default inform: 'Connection could not be established'.
				self fatalErrorOccured: true]]