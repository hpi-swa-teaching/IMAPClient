instance creation
newFromJsonStream: aStream
	
	^ self basicNew
		deserializeFrom: (Json readFrom: aStream);
		initialize;
		yourself