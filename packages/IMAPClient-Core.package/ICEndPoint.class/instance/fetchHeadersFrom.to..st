error handling
fetchHeadersFrom: aBeginId to: anEndId

	^ self
		sendCommand: (self class fetchHeadersWithRange: aBeginId to: anEndId);
		fetchNextResponse;
		parseFetchHeaders