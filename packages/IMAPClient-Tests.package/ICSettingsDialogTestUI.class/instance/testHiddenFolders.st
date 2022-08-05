testing
testHiddenFolders

	| wrappedListMorph |
	self setUpTestHiddenFolders.
	
	self saveButton: (self subject findByName: ICSettingsDialog nameSaveButton).
	wrappedListMorph := self subject findByName: ICSettingsDialog nameNotSyncedFoldersMorph.
	
	self assert: self settingsDialog model selectedNotSyncedFolders isEmpty.
	self assert: self settingsDialog model selectedEndPointSettings notSyncedFolders isEmpty.
	wrappedListMorph click.
	self saveButton click.
	self assert: self settingsDialog model selectedNotSyncedFolders size equals: 1.
	self assert: self settingsDialog model selectedEndPointSettings notSyncedFolders size equals: 1.
	wrappedListMorph click.
	self saveButton click.
	self assert: self settingsDialog model selectedNotSyncedFolders isEmpty.
	self assert: self settingsDialog model selectedEndPointSettings notSyncedFolders isEmpty