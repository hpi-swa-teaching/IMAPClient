mock methods
getEmailAccounts

	| endPoint |
	
	endPoint := ICMockEndPoint newWith: (ICAccountInfo new).
	endPoint accountInfo accountName: 'testName'.
	endPoint rootFolder: (ICFolder newRootFolderWith: endPoint).
	self addTestFoldersTo: endPoint.
	
	^ {endPoint} asOrderedCollection