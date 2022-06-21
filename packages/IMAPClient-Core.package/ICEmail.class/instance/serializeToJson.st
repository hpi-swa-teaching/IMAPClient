accessing
serializeToJson

	^ Json render: (JsonObject newFrom: {
		'header' -> (JsonObject newFrom: self header).
		'body' -> self body.
		'messageID' -> self messageID.
		'uid' -> self uniqueID})