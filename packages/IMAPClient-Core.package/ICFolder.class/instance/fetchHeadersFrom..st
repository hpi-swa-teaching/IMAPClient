action - update emails
fetchHeadersFrom: anUID
	
	self emails addAll: (self endpoint
		currentUIDsFor: self;
		maildirDiffFetchHeadersFrom: anUID).
		
	self ensureFreshness.
	self emails ifEmpty: [^ self].
	self retrieveFlagsFrom: self emails last uniqueID to: self emails first uniqueID