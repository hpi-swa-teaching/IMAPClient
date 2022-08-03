accessing
emailAccounts

	| endpoint |
	endpoint := ICMockEndpoint newWith: ICAccountInfo new.
	endpoint accountInfo accountName: self accountName.
	endpoint rootFolder: (ICFolder newRootFolderWith: endpoint).
	ICFolder named: self folderName in: endpoint rootFolder with: endpoint of: #Generic.
	^ {endpoint} asOrderedCollection