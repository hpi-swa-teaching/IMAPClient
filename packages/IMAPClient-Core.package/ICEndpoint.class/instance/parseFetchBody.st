login
parseFetchBody

	| bodyText |
	self stream nextResponse.
	self stream nextResponse.
	bodyText := self stream lastResponse asString.
	self stream nextResponse.
	self stream nextResponse.
	^ bodyText
		
		
	
	