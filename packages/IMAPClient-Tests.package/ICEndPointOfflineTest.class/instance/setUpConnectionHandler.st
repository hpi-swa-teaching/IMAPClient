running
setUpConnectionHandler
	| connectionHandler |
	connectionHandler := ICConnectionHandler new stream: ICNullStream new;
				 storedCommands: ICMockCommandStorage new;
				 loggedIn: true;
				 accountInfo: self helper getAccountInfo.
	self helper endpoint connectionHandler: connectionHandler