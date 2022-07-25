accessing
serializeToJson

	^ JsonObject newFrom: {
		self class notSyncedFoldersID asString -> self notSyncedFolders.
		self class foldersPerMoveMenuID asString -> self foldersPerMoveMenu}