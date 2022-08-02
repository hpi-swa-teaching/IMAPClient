mock methods
getEmailAccounts

	| endpoint |
	
	endpoint := ICMockEndPoint newWith: (ICAccountInfo new).
	endpoint accountInfo accountName: 'testName'.
	endpoint rootFolder: (ICFolder newRootFolderWith: endpoint).
	ICFolder named: self class testFolderNames first in: endpoint rootFolder with: endpoint of: #Generic.
	ICFolder named: self class testFolderNames second in: endpoint rootFolder with: endpoint of: #Generic.
	ICFolder named: self class testFolderNames third in: endpoint rootFolder with: endpoint of: #Generic.	
	
	^ {endpoint} asOrderedCollection