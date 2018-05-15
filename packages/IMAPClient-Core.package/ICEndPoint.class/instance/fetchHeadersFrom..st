fetching
fetchHeadersFrom: anUID

	self getCurrentUIDs.
	^ self maildirDiffFetchHeadersFrom: anUID to: self uids last
		
	