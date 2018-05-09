protocol parse
parseFetchBody

	^ ((self lastResponse copyFrom: 2 to: (self lastResponse size - 1)) joinSeparatedBy: Character cr)
	
	