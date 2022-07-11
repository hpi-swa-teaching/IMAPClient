accessing
serializeToJson

	^ Json render: (JsonObject newFrom: {self notSyncedFoldersID asString -> self notSyncedFolders})