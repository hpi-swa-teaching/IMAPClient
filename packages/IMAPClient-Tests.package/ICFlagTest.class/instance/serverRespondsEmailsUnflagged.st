tests
serverRespondsEmailsUnflagged

	self helper endpoint connectionHandler lastResponse: {'* 1 FETCH (UID 1 FLAGS '}.
	self helper endpoint parseFetchedFlagsAndPopulate: self emails first folder.
	self helper endpoint connectionHandler lastResponse: {'* 2 FETCH (UID 2 FLAGS '}.
	self helper endpoint parseFetchedFlagsAndPopulate: self emails first folder.
	