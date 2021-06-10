protocol handling - fetch
maildirDiffFetchHeadersFrom: anUID

	self uids
		ifNil: [^ OrderedCollection new];
		ifEmpty: [ ^ OrderedCollection new];
		ifNotNil: [^ self maildirDiffFetchHeadersFrom: (anUID + 1) to: (self uids last + 1)]