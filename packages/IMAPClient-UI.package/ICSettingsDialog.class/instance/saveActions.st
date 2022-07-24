toolbuilder
saveActions

	^ {
		ICAccountSettings notSyncedFoldersID -> [self saveNotSyncedFolders].
		ICAccountSettings foldersPerMoveMenuID -> [self saveFoldersPerMoveMenu]} asDictionary