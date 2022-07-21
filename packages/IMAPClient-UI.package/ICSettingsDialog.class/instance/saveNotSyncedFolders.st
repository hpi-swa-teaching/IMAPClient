toolbuilder
saveNotSyncedFolders

	self selectedEndpoint accountSettings notSyncedFolders: selectedNotSyncedFolders.
	UIManager default inform: 'Update or reopen client for changes to apply!'