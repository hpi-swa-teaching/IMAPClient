accessing
uiBuilders

	^ Dictionary newFrom: {
		ICAccountSettings notSyncedFoldersID -> [self buildNotSyncedFolders].
		ICAccountSettings foldersPerMoveMenuID -> [self buildFoldersPerMoveMenu]}