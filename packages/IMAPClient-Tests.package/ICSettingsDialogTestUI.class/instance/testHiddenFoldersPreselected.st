testing
testHiddenFoldersPreselected

	self settingsDialog model selectedEndPoint: self emailAccounts first.
	self subject findByName: ICSettingsDialog nameSettingsPanel.
	
	self settingsDialog model selectedNotSyncedFolders: {self folderName} asOrderedCollection.
	self settingsDialog model selectedSetting: ICAccountSettings notSyncedFoldersID.
	self saveButton: (self subject findByName: ICSettingsDialog nameSaveButton).
	
	self saveButton click.
	self assert: self settingsDialog model selectedNotSyncedFolders size equals: 1.
	self assert: self settingsDialog model selectedEndPointSettings notSyncedFolders size equals: 1