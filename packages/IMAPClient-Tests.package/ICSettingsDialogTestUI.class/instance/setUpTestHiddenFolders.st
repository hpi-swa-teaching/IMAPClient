running
setUpTestHiddenFolders

	self settingsDialog model selectedEndPoint: self emailAccounts first.
	self subject findByName: ICSettingsDialog nameSettingsPanel.
	self settingsDialog model selectedSetting: ICAccountSettings notSyncedFoldersID