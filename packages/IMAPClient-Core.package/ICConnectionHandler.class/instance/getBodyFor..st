as yet unclassified
getBodyFor: aMessageID

	self sendCommand: (ICCommand fetchBody: aMessageID).
	^ (ICParser parseFetchBody: self lastResponse)