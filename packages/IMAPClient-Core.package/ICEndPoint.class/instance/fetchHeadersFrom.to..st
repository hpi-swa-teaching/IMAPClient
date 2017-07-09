fetching
fetchHeadersFrom: aBeginId to: anEndId

	|uidSize start end|

	 self getAllUIDs.
	uidSize := uids size.
	start := uids at: (uidSize - anEndId + 1).
	end := uids at: (uidSize - aBeginId + 1).
	
	^self 
		sendCommand: (self class fetchHeadersWithUIDRange: start to: end);
		fetchNextResponse;
		parseFetchHeaders: self lastResponse