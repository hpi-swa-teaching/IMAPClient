accessing
emailAccounts

	| endPoint |
	endPoint := ICMockEndPoint newWith: ICAccountInfo new.
	endPoint accountInfo accountName: self accountName.
	endPoint rootFolder: (ICFolder newRootFolderWith: endPoint).
	ICFolder named: self folderName in: endPoint rootFolder with: endPoint of: #Generic.
	^ {endPoint} asOrderedCollection