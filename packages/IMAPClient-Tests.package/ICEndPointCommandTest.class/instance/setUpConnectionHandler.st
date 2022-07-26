running
setUpConnectionHandler
		
	self helper endpoint connectionHandler stream: ICMockSocketStream new;
		 loggedIn: true.
	self helper endpoint connectionHandler stream connected: true.
	self helper endpoint connectionHandler
		lastResponse: (self helper endpoint connectionHandler stream server selectedResponses at: '. FETCH 45 (body[HEADER.FIELDS (from to subject date)])')