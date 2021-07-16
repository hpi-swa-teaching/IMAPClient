accessing
setUp

	| connectionHandler folder |
	connectionHandler := ICConnectionHandler new 
		stream: ICNullStream new;
		storedCommands: ICMockCommandStorage new.
	
	self endPoint: (ICEndPoint new connectionHandler: connectionHandler).
	folder := ICFolder new endpoint: self endPoint.
	folder parent: folder.
	self endPoint rootFolder: folder.
		
	self email: (ICEmail new
		flagged: false;
		seen: false; 
		folder: folder;
		messageID: 47;
		uniqueID: 48).
