running
setUpConnectionHandler

	| connectionHandler |
	connectionHandler := self helper endPoint connectionHandler.
	connectionHandler
		stream: ICMockSocketStream new;
		loggedIn: true.
	connectionHandler stream connected: true.
	connectionHandler accountInfo: self helper getAccountInfo.
	connectionHandler lastResponse: (connectionHandler stream server selectedResponses at: '. FETCH 45 (body[HEADER.FIELDS (from to subject date)])')