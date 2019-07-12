as yet unclassified
parseFetchBody

	^ ((self lastResponse copyFrom: 2 to: (self lastResponse size - 1)) joinSeparatedBy: Character cr)