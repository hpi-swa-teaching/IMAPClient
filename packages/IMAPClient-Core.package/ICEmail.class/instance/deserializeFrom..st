accessing-header
deserializeFrom: aJson

	self header: (aJson at: 'header' ifAbsent: [JsonObject new]);
		body: (aJson at: 'body');
		messageID: (aJson at: 'messageID');
		uniqueID: (aJson at: 'uid');
		yourself