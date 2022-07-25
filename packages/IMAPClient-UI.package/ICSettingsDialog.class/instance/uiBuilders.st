accessing
uiBuilders

	^ {
		ICAccountSettings notSyncedFoldersID -> [self buildNotSyncedFolders].
		ICAccountSettings foldersPerMoveMenuID -> [self buildFoldersPerMoveMenu]} asDictionary