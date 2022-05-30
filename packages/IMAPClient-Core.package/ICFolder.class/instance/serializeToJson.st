accessing
serializeToJson

	^ Json render: (
		JsonObject newFrom: {
			'type' -> self folderType asString})