action - update emails
fetchHeadersFrom: anUID
	
	self emails addAll: (self endpoint
		currentUIDsFor: self;
		maildirDiffFetchHeadersFrom: anUID).
		
	self emails ifEmpty: [^ self].
	
	self checkTopicality.
	
	self emails ifEmpty: [^ self].

	self retrieveFlagsFrom: self emails last uniqueID to: self emails first uniqueID