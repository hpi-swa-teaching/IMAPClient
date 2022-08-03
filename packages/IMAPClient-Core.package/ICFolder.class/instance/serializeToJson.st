accessing
serializeToJson

	^ Json render: (JsonObject newFrom: {'id' -> self id. 'type' -> self folderType asString})