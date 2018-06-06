email access
fetchHeadersFrom: anUID1 to: anUID2

	self emails addAll: (self endpoint
		getCurrentUIDsFor: self;
		maildirDiffFetchHeadersFrom: anUID1 to: anUID2)