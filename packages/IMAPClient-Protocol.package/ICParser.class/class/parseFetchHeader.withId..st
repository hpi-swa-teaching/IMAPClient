parsing
parseFetchHeader: aHeaderString withId: aMessageID

	| email |
	email := ICEmail new messageID: aMessageID.
	self populate: email withHeaderChunks: (self chop: aHeaderString forEmail: email).
	
	^ email