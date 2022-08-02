testing
testHiddenFolders
	| wrappedListMorph |
	self settingsDialog model selectedEndpoint: self emailAccounts first.
	self subject findByName: ICSettingsDialog nameSettingsPanel.
	self settingsDialog model selectedSetting: ICAccountSettings notSyncedFoldersID.
	
	self saveButton: (self subject findByName: ICSettingsDialog nameSaveButton).
	wrappedListMorph := self subject findByName: ICSettingsDialog nameNotSyncedFoldersMorph.
	
	self assert: self settingsDialog model selectedNotSyncedFolders isEmpty.
	self assert: self settingsDialog model selectedEndpointSettings notSyncedFolders isEmpty.
	wrappedListMorph click.
	self saveButton click.
	self assert: self settingsDialog model selectedNotSyncedFolders size equals: 1.
	self assert: self settingsDialog model selectedEndpointSettings notSyncedFolders size equals: 1.
	wrappedListMorph click.
	self saveButton click.
	self assert: self settingsDialog model selectedNotSyncedFolders isEmpty.
	self assert: self settingsDialog model selectedEndpointSettings notSyncedFolders isEmpty.
	

