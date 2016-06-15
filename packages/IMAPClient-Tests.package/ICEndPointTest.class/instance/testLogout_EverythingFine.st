logout
testLogout_EverythingFine

	self
		testConnectToOnAndLoginUsing_EverythingFine;
		assert: (self endPoint logout);
		deny: (self endPoint loggedIn);
		deny: (self endPoint isConnected)