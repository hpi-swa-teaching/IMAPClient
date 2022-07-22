action - endpoints
switchToNewEndpoint

	self folders: self getFolderList.
	self selectedNotSyncedFolders: self selectedEndpoint accountSettings notSyncedFolders.
	self selectedSetting: nil.
	self settingsPanelWidget morph abandon.
	self
		changed: #settingsList;
		changed: #enableSaveButton;
		changed: #morph