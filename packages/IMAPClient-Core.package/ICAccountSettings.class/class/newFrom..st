instance creation
newFrom: aJson

	^ self new
		notSyncedFolders: (aJson at: self notSyncedFoldersID asString ifAbsent: [OrderedCollection new]) asOrderedCollection;
		foldersPerMoveMenu: (aJson at: self foldersPerMoveMenuID asString ifAbsent: [self defaultFoldersPerMoveMenu])