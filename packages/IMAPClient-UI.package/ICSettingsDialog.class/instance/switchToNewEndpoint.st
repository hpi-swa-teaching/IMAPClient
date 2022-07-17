action - endpoints
switchToNewEndpoint

	self folders: self getFolderList.
	"needs to be changed to reflect actual settings!!!" selectedNotSyncedFolders := Array new.
	self selectedSetting: nil.
	self changed: #settingsList