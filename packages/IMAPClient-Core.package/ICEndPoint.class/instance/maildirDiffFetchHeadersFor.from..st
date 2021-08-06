protocol handling - fetch
maildirDiffFetchHeadersFor: aFolder from: anUID

	| uids |
	
	uids := self currentUIDsFor: aFolder.
	uids ifEmpty: [ ^ uids].
		
	^ self maildirDiffFetchHeadersFrom: (anUID + 1) to: (uids last + 1)