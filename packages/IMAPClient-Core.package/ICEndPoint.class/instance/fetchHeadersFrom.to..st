fetching
fetchHeadersFrom: aBeginId to: anEndId

	^ self
		sendCommand: (self class fetchHeadersWithUIDRange: aBeginId to: anEndId);
		fetchNextResponse;
		parseFetchHeaders: self lastResponse