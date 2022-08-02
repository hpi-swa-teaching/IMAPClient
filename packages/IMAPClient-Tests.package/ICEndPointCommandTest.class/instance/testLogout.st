logout
testLogout

	self
		assert: self endPoint logout;
		deny: self endPoint connectionHandler loggedIn;
		deny: self endPoint isConnected