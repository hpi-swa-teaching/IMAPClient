accessing
testRetrieveBody

	| folder endPoint |
	endPoint := ICMockEndPoint new.
	endPoint mailBody: self email body.
	
	folder := ICFolder new.
	folder
		endPoint: endPoint;
		folderName: 'dummy';
		parent: nil.
	
	self email folder: folder.
	self assert: (folder retrieveBodyFor: self email) equals: self class expectedBody