email access
fetchHeadersFrom: anUID

	"loads mails newer than anUID"
	
	| minUID maxUID |
		
	self emails addAll: (self endpoint
		getCurrentUIDsFor: self;
		maildirDiffFetchHeadersFrom: anUID).
		
	self emails size = 0 ifTrue: [^ self].
		
	"update existing flags of all mails in folder"
	minUID := self emails last uid.
	maxUID := self emails first uid.
	
	self retrieveFlagsFrom: minUID to: maxUID. 
	
		
	