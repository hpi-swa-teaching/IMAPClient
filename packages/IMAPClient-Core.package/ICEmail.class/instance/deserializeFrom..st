accessing-header
deserializeFrom: aJson

	self
		id: (aJson at: 'id');
		header: (Dictionary newFrom: (aJson at: 'header' ifAbsent: [JsonObject new]));
		body: (aJson at: 'body');
		messageID: (aJson at: 'messageID');
		uniqueID: (aJson at: 'uid')