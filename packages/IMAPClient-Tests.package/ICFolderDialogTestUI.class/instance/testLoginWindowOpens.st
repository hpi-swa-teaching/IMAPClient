testing
testLoginWindowOpens

	| updateButton inputWindow |
	updateButton := self subject findByName: ICFolderDialog nameUpdateButton.
	
	self folderDialog emailAccounts first isConnected: false.
	inputWindow := self getOpenedWindowWithClickOn: updateButton.
	self assert: inputWindow label equals: ICInputDialog dialogTitle