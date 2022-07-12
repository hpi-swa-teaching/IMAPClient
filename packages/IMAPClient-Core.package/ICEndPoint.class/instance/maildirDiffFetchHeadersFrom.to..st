protocol handling - fetch
maildirDiffFetchHeadersFrom: start to: end

	
	((self readWriter directoryExists: self maildirFileName)
	 and: [self readWriter filesExistIn: self maildirFileName from: start to: end]) ifTrue: [^ OrderedCollection new].
	
	self connectionHandler fetchHeadersForUIDsFrom: start to: end.
	
	^ self parseFetchHeaders: self lastResponse