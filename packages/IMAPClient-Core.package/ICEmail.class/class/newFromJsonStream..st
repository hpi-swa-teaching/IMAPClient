instance creation
newFromJsonStream: aStream
	
	^ self basicNew
		initialize;
		deserializeFrom: (Json readFrom: aStream);
		yourself