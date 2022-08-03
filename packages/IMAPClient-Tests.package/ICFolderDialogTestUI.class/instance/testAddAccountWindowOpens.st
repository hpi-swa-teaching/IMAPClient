testing
testAddAccountWindowOpens

	| openLoginWindowButton loginWindow |
	
	openLoginWindowButton := self subject findByName: ICFolderDialog nameAddAccountButton.
	loginWindow := self getOpenedWindowWithClickOn: openLoginWindowButton.
	self assert: loginWindow label equals: ICLoginDialog dialogTitle.
	