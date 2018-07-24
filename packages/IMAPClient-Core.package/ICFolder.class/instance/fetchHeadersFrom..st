updateEmails
fetchHeadersFrom: anUID

	"loads mails, which are newer than anUID"
	
	self emails addAll: (self endpoint
		getCurrentUIDsFor: self;
		maildirDiffFetchHeadersFrom: anUID).
		
	self emails size = 0 ifTrue: [^ self].
	
	" check if mails were moved on the server, so that we need to delete them"
	self checkTopicality.
		
	"update existing flags of all mails in folder"
	self retrieveFlagsFrom: self emails last uid to: self emails first uid. 
	
		
	