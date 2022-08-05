as yet unclassified
getEmailAccounts

	| endpoint |
	endpoint := ICMockEndpoint newWith: ICAccountInfo new.
	endpoint accountInfo accountName: 'testName'.
	endpoint rootFolder: (ICFolder newRootFolderWith: endpoint).
	self addTestFoldersTo: endpoint.
	
	^ {endpoint} asOrderedCollection