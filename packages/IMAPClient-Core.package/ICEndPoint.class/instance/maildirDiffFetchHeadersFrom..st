connection
maildirDiffFetchHeadersFrom: anUID
	"fetch headers in range (anUID, self uids last + 1]"

	self uids
		ifNil: [^ OrderedCollection new]
		ifNotNil: [^ self maildirDiffFetchHeadersFrom: (anUID + 1) to: self uids last + 1]