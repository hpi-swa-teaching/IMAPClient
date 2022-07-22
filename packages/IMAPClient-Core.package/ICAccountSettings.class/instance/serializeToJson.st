accessing
serializeToJson

	^ JsonObject newFrom: {self class notSyncedFoldersID asString -> self notSyncedFolders}