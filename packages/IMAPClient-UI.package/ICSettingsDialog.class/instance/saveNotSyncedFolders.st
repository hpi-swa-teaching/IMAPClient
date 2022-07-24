toolbuilder
saveNotSyncedFolders

	self selectedEndpointSettings notSyncedFolders: self selectedNotSyncedFolders.
	UIManager default inform: 'Update or reopen client for changes to apply!'