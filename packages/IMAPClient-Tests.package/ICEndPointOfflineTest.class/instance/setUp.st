accessing
setUp

	| connectionHandler |
	connectionHandler := ICConnectionHandler new 
		stream: ICNullStream new;
		storedCommands: ICMockCommandStorage new.
	
	self endPoint: (ICEndPoint new connectionHandler: connectionHandler).
	
	self email: (ICEmail new
		flagged: false;
		seen: false; 
		folder: (ICFolder new endpoint: self endPoint);
		messageID: 47;
		uniqueID: 48).
	self email folder parent: self email folder.
	self endPoint rootFolder: self email folder