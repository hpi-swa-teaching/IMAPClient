folderNames
testRootFolderHashName
	
	| testEndpoint|
	testEndpoint := ICEndPoint new
		accountInfo: (ICAccountInfo new).
	
	testEndpoint accountInfo
		host: 'testHost';
		username: 'klaus'.
	self assert: testEndpoint rootFolderName equals: '1394373304'.
	
	testEndpoint accountInfo
		host: 'tHost';
		username: 'klaus'.
	self assert: testEndpoint rootFolderName equals: '8003456151'.	
		
	testEndpoint accountInfo
		host: 'abcd';
		username: 'efgh'.
	self assert: testEndpoint rootFolderName equals: '3788214663'