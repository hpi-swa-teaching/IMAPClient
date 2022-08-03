logout
testLogout

	self
		assert: self endpoint logout;
		deny: self endpoint connectionHandler loggedIn;
		deny: self endpoint isConnected