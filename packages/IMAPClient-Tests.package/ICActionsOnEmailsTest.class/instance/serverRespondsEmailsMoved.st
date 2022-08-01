serveractions
serverRespondsEmailsMoved

	self helper endpoint connectionHandler lastResponse: {'* 1 FETCH (UID 1 FLAGS (\Seen)'}.
	self helper endpoint parseFetchedFlagsAndPopulate: self emails first folder.
	