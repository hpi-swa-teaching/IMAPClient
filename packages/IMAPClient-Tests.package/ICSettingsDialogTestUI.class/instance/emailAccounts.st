accessing
emailAccounts
	
	| endpoint |
	
	endpoint := ICMockEndPoint newWith: (ICAccountInfo new).
	endpoint accountInfo accountName: self accountName.
	endpoint rootFolder: (ICFolder newRootFolderWith: endpoint).
	ICFolder named: 'testFolder' in: endpoint rootFolder with: endpoint of: #Generic.
	^ {endpoint} asOrderedCollection