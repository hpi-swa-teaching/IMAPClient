accessing
switchToNewSetting

	self selectedSetting ifNil: [^ self].
	(self uiBuilders at: self selectedSetting) value.
	self changed: #enableSaveButton