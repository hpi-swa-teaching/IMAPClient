protocol handling - fetch
getBodyFor: anEmail
	
	self sendCommand: (ICCommand fetchBody: anEmail messageID).
	^ (ICParser parseFetchBody: self lastResponse)