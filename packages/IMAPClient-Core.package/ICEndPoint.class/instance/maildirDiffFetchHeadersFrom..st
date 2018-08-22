connection
maildirDiffFetchHeadersFrom: anUID

	"fetch headers in range (anUID, self uids last("
	
	self uids ifEmpty: [ ^ OrderedCollection new].
	
	self uids
		ifNil: [^ OrderedCollection new]
		ifNotNil: [^ self maildirDiffFetchHeadersFrom: (anUID + 1) to: (self uids last + 1)]