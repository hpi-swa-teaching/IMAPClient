action - endpoints
switchToNewEndPoint

	self folders: self getFolderList.
	self fillSettingsOnSwitch.
	self selectedSetting: nil.
	self settingsPanelWidget morph abandon.
	self
		changed: #settingsList;
		changed: #enableSaveButton;
		changed: #morph