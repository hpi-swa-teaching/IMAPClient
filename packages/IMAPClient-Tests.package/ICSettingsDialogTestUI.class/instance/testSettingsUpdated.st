testing
testSettingsUpdated

	| settingsPanel |
	self settingsDialog model selectedEndPoint: self emailAccounts first.
	settingsPanel := self subject findByName: ICSettingsDialog nameSettingsPanel.
	
	"the settingsPanel is shown empty (as it should be) but for some reason there is a 'Morph new' hidden in there. 
	So we check if that default morph is in there to test if no setting is being shown"
	
	self assert: settingsPanel morph bounds equals: Morph new bounds.
	self assert: settingsPanel morph color equals: Morph new color.
	
	self settingsDialog model selectedSetting: ICAccountSettings foldersPerMoveMenuID.
	self
		assert: self settingsPanelWidget morph extension externalName
		equals: ICSettingsDialog nameFoldersPerMoveMenuMorph.
	
	self settingsDialog model selectedSetting: ICAccountSettings notSyncedFoldersID.
	self
		assert: self settingsPanelWidget morph extension externalName
		equals: ICSettingsDialog nameNotSyncedFoldersMorph