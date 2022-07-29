accessing
emailAccounts
	
	| endpoint |
	
	endpoint := ICMockEndpoint newWith: (ICAccountInfo new).
	endpoint accountInfo accountName: self accountName.
	endpoint rootFolder: (ICFolder newRootFolderWith: endpoint).

	^ {endpoint} asOrderedCollection