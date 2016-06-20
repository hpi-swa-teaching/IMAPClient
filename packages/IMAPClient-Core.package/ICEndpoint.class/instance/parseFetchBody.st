login
parseFetchBody

	^ (self lastResponse copyFrom: 2 to: (lastResponse size - 1)) joinSeparatedBy: Character cr.
	
	