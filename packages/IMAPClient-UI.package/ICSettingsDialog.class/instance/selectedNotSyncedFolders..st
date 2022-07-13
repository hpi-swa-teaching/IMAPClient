accessing
selectedNotSyncedFolders: anOrderedCollection

	self halt.
	selectedNotSyncedFolders := anOrderedCollection.
	self changed: #selectedNotSyncedFolders