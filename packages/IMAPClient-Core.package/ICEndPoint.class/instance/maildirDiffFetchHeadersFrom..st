fetching
maildirDiffFetchHeadersFrom: anUID

	self uids
		ifEmpty: [ ^ OrderedCollection new];
		ifNil: [^ OrderedCollection new]
		ifNotNil: [^ self maildirDiffFetchHeadersFrom: (anUID + 1) to: (self uids last + 1)]