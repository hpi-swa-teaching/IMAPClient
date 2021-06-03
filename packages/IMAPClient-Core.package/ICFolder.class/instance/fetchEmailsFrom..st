action - update emails
fetchEmailsFrom: anUID
	
	self emails addAll: (self endpoint
		currentUIDsFor: self;
		maildirDiffFetchHeadersFrom: anUID).
		
	self ensureFreshness.
	self emails ifEmpty: [^ self].
	self retrieveFlagsFrom: self emails last uniqueID to: self emails first uniqueID.
	(self emails select: [:anEmail | anEmail body isNil or: [anEmail body isEmpty]])
		do: [:anEmail | anEmail body: (self retrieveBodyFor: anEmail).
						self endpoint switchFlag: #seen for: anEmail to: (anEmail perform: #seen).
						self endpoint readWriter write:  anEmail.]