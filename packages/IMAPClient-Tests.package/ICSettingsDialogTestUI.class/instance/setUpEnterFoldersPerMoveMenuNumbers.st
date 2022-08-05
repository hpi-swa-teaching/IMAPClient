testing
setUpEnterFoldersPerMoveMenuNumbers

	self settingsDialog model selectedEndPoint: self emailAccounts first.
	self subject findByName: ICSettingsDialog nameSettingsPanel.
	self settingsDialog model selectedSetting: ICAccountSettings foldersPerMoveMenuID.
	
	self saveButton: (self subject findByName: ICSettingsDialog nameSaveButton).
	self inputField: (self subject findByName: ICSettingsDialog nameFoldersPerMoveMenuMorph)