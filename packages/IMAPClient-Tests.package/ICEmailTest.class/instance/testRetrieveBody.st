accessing
testRetrieveBody

	| folder endpoint |
	
	endpoint := ICMockEndpoint new.
	endpoint mailBody: self email body.
	
	folder := ICFolder new.
	folder endpoint: endpoint;
		   folderName: 'dummy';
		   parent: nil.
	
	self email folder: folder.
	self assert: self email readBody equals: self class expectedBody