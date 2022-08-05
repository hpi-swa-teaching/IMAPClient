folderNames
testRootFolderHashName

	| testEndPoint |
	testEndPoint := ICEndPoint new.
	testEndPoint connectionHandler accountInfo: ICAccountInfo new.
	
	testEndPoint connectionHandler accountInfo
		host: 'testHost';
		username: 'klaus'.
	self assert: testEndPoint rootDirectoryName equals: '1394373304'.
	
	testEndPoint accountInfo
		host: 'tHost';
		username: 'klaus'.
	self assert: testEndPoint rootDirectoryName equals: '8003456151'.
	
	testEndPoint accountInfo
		host: 'abcd';
		username: 'efgh'.
	self assert: testEndPoint rootDirectoryName equals: '3788214663'