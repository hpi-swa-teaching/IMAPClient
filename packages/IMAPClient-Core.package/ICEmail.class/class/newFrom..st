instance creation
newFrom: aJson
	
	^ self basicNew
		deserializeFrom: aJson;
		initialize;
		yourself