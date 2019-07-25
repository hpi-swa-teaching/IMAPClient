parsing
parseFetchBody: aResponseStringArray

	^ ((aResponseStringArray copyFrom: 2 to: (aResponseStringArray size - 1)) joinSeparatedBy: Character cr)