fetching
fetchHeader: messageId

	^ self
		sendCommand: (self class fetchHeaderCommand: messageId);
		fetchNextResponse;
		parseFetchHeader: self lastResponse 
		
	
	