accessing
testRetrieveBody

	| folder endpoint |
	
	endpoint := ICMockEndpoint new.
	
	"ICEmails are retrieving their body from the endpoint."
	endpoint mailBody: self email body.
	
	folder := ICFolder new.
	folder endpoint: endpoint;
		   name: 'dummy';
		   parent: nil.
	
	self email folder: folder.
	self assert: self email retrieveBody equals: self class expectedBody