action - endpoints
switchToNewEndpoint

	self folders: self getFolderList.
	selectedNotSyncedFolders := self selectedEndpoint accountSettings notSyncedFolders.
	self selectedSetting: nil.
	self changed: #settingsList