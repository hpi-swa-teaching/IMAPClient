accessing
dateInSecondsSinceSqueakEpoch	
	
	^ self dateInSecondsSince1980 + (DateAndTime year: 1980 day: 1) asSeconds
