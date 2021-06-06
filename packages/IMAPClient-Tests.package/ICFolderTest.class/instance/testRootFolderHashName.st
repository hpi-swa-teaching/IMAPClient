folderNames
testRootFolderHashName
	
	| testEndpoint|
	testEndpoint := ICEndPoint new.
	testEndpoint connectionHandler accountInfo: (ICAccountInfo new).
	
	testEndpoint connectionHandler accountInfo
		host: 'testHost';
		username: 'klaus'.
	self assert: testEndpoint rootDirectoryName equals: '1394373304'.
	
	testEndpoint accountInfo
		host: 'tHost';
		username: 'klaus'.
	self assert: testEndpoint rootDirectoryName equals: '8003456151'.	
		
	testEndpoint accountInfo
		host: 'abcd';
		username: 'efgh'.
	self assert: testEndpoint rootDirectoryName equals: '3788214663'