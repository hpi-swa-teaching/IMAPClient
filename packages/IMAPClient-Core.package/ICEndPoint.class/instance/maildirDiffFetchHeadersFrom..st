connection
maildirDiffFetchHeadersFrom: anUID

	self uids
		ifNil: [^ OrderedCollection new]
		ifNotNil: [^ self maildirDiffFetchHeadersFrom: anUID to: self uids last]