accessing
testRetrieveBody

	| folder endpoint |
	
	endpoint := ICMockEndpoint new.
	Transcript show: 'Jetzt geht es los'; cr.
	Transcript show: self email body; cr.
	endpoint mailBody: self email body.
	
	folder := ICFolder new.
	folder endpoint: endpoint;
		   folderName: 'dummy';
		   parent: nil.
	
	self email folder: folder.
	Transcript show: email readBody; cr.
	Transcript show: self class expectedBody; cr.
	self assert: self email readBody equals: self class expectedBody