connectToOnAndLoginUsing
testConnectToOnAndLoginUsing_EverythingFine
	
	self endPoint connectTo: self class serverName on: self class serverPort andLogin: self class serverUsername using: self class serverPassword.
	self assert: (self endPoint isConnected)