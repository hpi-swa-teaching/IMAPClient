logout
testLogout_EverythingFine

	self
		testConnectToOnAndLoginUsing_EverythingFine;
		assert: (self endPoint logout) equals: true;
		assert: (self endPoint loggedIn) equals: false;
		assert: (self endPoint isConnected) equals: false