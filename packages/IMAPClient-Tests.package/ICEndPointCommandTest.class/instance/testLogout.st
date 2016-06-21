logout
testLogout

	self
		assert: (self endPoint logout);
		deny: (self endPoint loggedIn);
		deny: (self endPoint isConnected)