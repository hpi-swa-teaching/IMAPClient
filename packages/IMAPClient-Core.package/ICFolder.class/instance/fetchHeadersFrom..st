email access
fetchHeadersFrom: anUID

	^ self endpoint
		getCurrentUIDs;
		maildirDiffFetchHeadersFrom: anUID