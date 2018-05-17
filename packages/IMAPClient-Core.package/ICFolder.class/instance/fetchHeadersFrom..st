email access
fetchHeadersFrom: anUID

	| emails |
	self halt.
	emails := self emails.
	emails addAll: (self endpoint
		getCurrentUIDsFor: self;
		maildirDiffFetchHeadersFrom: anUID).
	self emails: emails