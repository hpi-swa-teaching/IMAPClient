email access
fetchHeadersFrom: anUID

	self emails addAll: (self endpoint
		getCurrentUIDsFor: self;
		maildirDiffFetchHeadersFrom: anUID)