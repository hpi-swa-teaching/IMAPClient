accessing-header
deserializeFrom: aJson
	
	self
		id: (aJson at: 'id');
		header: (self createDictionary:  (aJson at: 'header' ifAbsent: [JsonObject new]));
		body: (aJson at: 'body');
		messageID: (aJson at: 'messageID');
		uniqueID: (aJson at: 'uid')