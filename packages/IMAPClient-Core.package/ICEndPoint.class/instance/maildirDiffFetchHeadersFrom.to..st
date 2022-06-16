protocol handling - fetch
maildirDiffFetchHeadersFrom: start to: end

	| directoryExists |
	directoryExists := FileDirectory default directoryExists: (FileDirectory default fullPathFor: self maildirFileName).
	
	(directoryExists and: [self doFilesExistFrom: start to: end]) ifTrue: [^ OrderedCollection new].
	
	self connectionHandler fetchHeadersForUIDsFrom: start to: end.
	
	^ self parseFetchHeaders: self lastResponse