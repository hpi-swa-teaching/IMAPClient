testing
testHiddenFoldersPreselected

	self settingsDialog model selectedEndpoint: self emailAccounts first.
	self subject findByName: ICSettingsDialog nameSettingsPanel.
	self settingsDialog model selectedNotSyncedFolders: {'testFolder'} asOrderedCollection.
	self settingsDialog model selectedSetting: ICAccountSettings notSyncedFoldersID.
	self saveButton: (self subject findByName: ICSettingsDialog nameSaveButton).
	self saveButton click.
	self assert: self settingsDialog model selectedNotSyncedFolders size equals: 1.
	self assert: self settingsDialog model selectedEndpointSettings notSyncedFolders size equals: 1.