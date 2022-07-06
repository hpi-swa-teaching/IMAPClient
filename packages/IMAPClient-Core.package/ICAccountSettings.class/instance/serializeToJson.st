accessing
serializeToJson

	^ Json render: (JsonObject newFrom: {'notSyncedFolders' -> self notSyncedFolders})