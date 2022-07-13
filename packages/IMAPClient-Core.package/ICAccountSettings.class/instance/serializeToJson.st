accessing
serializeToJson

	^ Json render: (JsonObject newFrom: {self notSyncedFoldersID asString -> self notSyncedFolders .  self allowConcurrentSyncID asString -> self allowConcurrentSync})