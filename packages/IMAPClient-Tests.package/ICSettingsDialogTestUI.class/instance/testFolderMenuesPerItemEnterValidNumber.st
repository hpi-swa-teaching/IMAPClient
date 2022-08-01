testing
testFolderMenuesPerItemEnterValidNumber
	
	| inputField saveButton testNumber |
	
	testNumber := 65462134.
	
	self settingsDialog model selectedEndpoint: self emailAccounts first.
	self subject findByName: ICSettingsDialog nameSettingsPanel.
	self settingsDialog model selectedSetting: ICAccountSettings foldersPerMoveMenuID.
	
	saveButton := self subject findByName: ICSettingsDialog nameSaveButton.
	inputField := self subject findByName: ICSettingsDialog nameFoldersPerMoveMenuMorph.
	
	self assert: self settingsDialog model foldersPerMoveMenu equals: ICAccountSettings defaultFoldersPerMoveMenu.
	
	inputField sendKeys: testNumber asString.
	saveButton click.
	
	self assert: self settingsDialog model foldersPerMoveMenu equals: testNumber asString.
	
	


