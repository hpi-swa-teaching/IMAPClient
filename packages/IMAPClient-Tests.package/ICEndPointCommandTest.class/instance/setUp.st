running
setUp

	| subfolder |
	
	self endPoint: ICEndPoint new.
	self rootFolder: ICFolder new.
	self rootFolder endpoint: self endPoint.
	
	subfolder := ICFolder named: 'inbox' in: self rootFolder with: self endPoint.
	
	self endPoint
		rootFolder: self rootFolder;
		currentFolderName: 'inbox';
		hierarchyDelimiter: '\'.
		
	self endPoint connectionHandler 
			stream: ICMockSocketStream new;
			loggedIn: true.
			
	self endPoint connectionHandler stream connected: true.
	
	self endPoint connectionHandler lastResponse: (self endPoint connectionHandler 
		stream server selectedResponses
		at: '. FETCH 45 (body[HEADER.FIELDS (from to subject date)])')