connection
fetchBodyFor: anEmailID
	
	self 
		sendCommand: (self class fetchBodyCommand: anEmailID);
		fetchNextResponse.
	^ self lastResponse