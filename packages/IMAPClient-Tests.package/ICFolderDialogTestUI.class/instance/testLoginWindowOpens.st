testing
testLoginWindowOpens

	
	| openUpdateButton loginWindow loggedOutAccount |
	
	loggedOutAccount := ICMockEndpoint newWith: (ICAccountInfo new).
	loggedOutAccount isConnected: false.
	self folderDialog emailAccounts: {loggedOutAccount} asOrderedCollection.
	openUpdateButton := self subject findByName: ICFolderDialog nameUpdateButton.
	loginWindow := self getOpenedWindowWithClickOn: openUpdateButton.
	self assert: loginWindow label equals: ICInputDialog dialogTitle.