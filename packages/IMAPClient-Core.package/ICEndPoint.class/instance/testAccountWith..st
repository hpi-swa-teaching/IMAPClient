login
testAccountWith: accountInfo

	self connectAndLoginWith: accountInfo.
 
	^ self fatalErrorOccured not