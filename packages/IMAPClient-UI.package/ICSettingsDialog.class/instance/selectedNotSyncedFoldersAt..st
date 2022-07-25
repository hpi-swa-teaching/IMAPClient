accessing
selectedNotSyncedFoldersAt: anInteger

	self selectedNotSyncedFolders ifNil: [^ false].
	^ self selectedNotSyncedFolders includes: (self folders at: anInteger ifAbsent: [^ false])