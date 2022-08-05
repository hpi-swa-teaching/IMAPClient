as yet unclassified
getEmailAccounts

	| endPoint |
	
	endPoint := ICMockEndPoint newWith: (ICAccountInfo new).
	endPoint accountInfo accountName: 'testName'.
	endPoint rootFolder: (ICFolder newRootFolderWith: endPoint).
	ICFolder named: self class testFolderNames first in: endPoint rootFolder with: endPoint of: #Generic.
	ICFolder named: self class testFolderNames second in: endPoint rootFolder with: endPoint of: #Generic.
	ICFolder named: self class testFolderNames third in: endPoint rootFolder with: endPoint of: #Generic.	
	
	^ {endPoint} asOrderedCollection