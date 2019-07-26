updateEmails
fetchHeadersFrom: anUID

	"loads mails, which are newer than anUID"
	
	self emails addAll: (self endpoint
		currentUIDsFor: self;
		maildirDiffFetchHeadersFrom: anUID).
		
	self emails ifEmpty: [^ self].
	
	" check if mails were moved on the server, so that we need to delete them"
	self checkTopicality.
	
	" if checkTopicality deleted mails, the mails again could be empty "
	self emails ifEmpty: [^ self].
		
	"update existing flags of all mails in folder"
	self retrieveFlagsFrom: self emails last uniqueID to: self emails first uniqueID