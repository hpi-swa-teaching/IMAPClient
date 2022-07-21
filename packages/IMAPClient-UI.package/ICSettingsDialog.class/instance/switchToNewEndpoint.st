action - endpoints
switchToNewEndpoint

	self folders: self getFolderList.
	self selectedNotSyncedFolders: self selectedEndpoint accountSettings notSyncedFolders.
	self selectedSetting: nil.
	self
		changed: #settingsList;
		changed: #enableSaveButton