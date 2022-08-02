toolbuilder
saveActions

	^ Dictionary newFrom: {
		ICAccountSettings notSyncedFoldersID -> [self saveNotSyncedFolders].
		ICAccountSettings foldersPerMoveMenuID -> [self saveFoldersPerMoveMenu]}