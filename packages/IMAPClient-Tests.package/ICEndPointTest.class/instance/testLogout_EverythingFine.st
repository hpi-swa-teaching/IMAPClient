logout
testLogout_EverythingFine

	self testConnectToOnAndLoginUsing_EverythingFine.
	self assert: (self endPoint logout) = true.
	self assert: (self endPoint loggedIn) = false.
	self assert: (self endPoint isConnected) = false