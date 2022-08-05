accessing
testRetrieveBody

	| folder endpoint |
	endpoint := ICMockEndpoint new.
	endpoint mailBody: self email body.
	
	folder := ICFolder new.
	folder
		endPoint: endpoint;
		folderName: 'dummy';
		parent: nil.
	
	self email folder: folder.
	self assert: (folder retrieveBodyFor: self email) equals: self class expectedBody