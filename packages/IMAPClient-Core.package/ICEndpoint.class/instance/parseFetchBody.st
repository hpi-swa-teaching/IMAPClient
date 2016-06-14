login
parseFetchBody

	| bodyText |
	self stream 
		nextResponse;
		nextResponse.
	bodyText := self stream lastResponse asString.
	self stream 
		nextResponse;
		nextResponse.
	^ bodyText
		
		
	
	