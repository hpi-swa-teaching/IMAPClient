accessing
serializeToJson

	^ Json render: (JsonObject newFrom: {self class notSyncedFoldersID asString -> self notSyncedFolders})