testing
testHashName
	
	| endpoint|
	endpoint := ICEndPoint new accountInfo: (ICAccountInfo newWithAccountName: '' host: '' port: '' username: '' password: '' ssl: '').
	
	endpoint accountInfo
		host: 'testHost';
		username: 'klaus'.
	self assert: endpoint rootFolderName equals: '1394373304'.
	
	endpoint accountInfo
		host: 'tHost';
		username: 'klaus'.
	self assert: endpoint rootFolderName equals: '8003456151'.	
		
	endpoint accountInfo
		host: 'abcd';
		username: 'efgh'.
	self assert: endpoint rootFolderName equals: '3788214663'