protocol handling - fetch
maildirDiffFetchAllHeaders

	self connectionHandler fetchAllHeaders.
	^ self parseFetchHeaders: self lastResponse