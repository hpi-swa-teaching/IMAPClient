tests
serverRespondsEmailsSeen

	self helper endPoint connectionHandler lastResponse: {'* 1 FETCH (UID 1 FLAGS (\Seen)'}.
	self helper endPoint parseFetchedFlagsAndPopulate: self emails first folder.
	self helper endPoint connectionHandler lastResponse: {'* 2 FETCH (UID 2 FLAGS (\Seen)'}.
	self helper endPoint parseFetchedFlagsAndPopulate: self emails first folder