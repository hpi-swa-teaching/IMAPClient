accessing
serializeToJson

	^ Json render: (JsonObject newFrom: {self class notSyncedFoldersID asString -> self notSyncedFolders .  self class allowConcurrentSyncID asString -> self allowConcurrentSync})