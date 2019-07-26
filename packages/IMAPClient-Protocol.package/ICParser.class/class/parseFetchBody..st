parsing
parseFetchBody: aResponseStringArray

	^ ((aResponseStringArray 
		copyFrom: self fetchBodyOffset
		to: (aResponseStringArray size - 1))
			joinSeparatedBy: Character cr)