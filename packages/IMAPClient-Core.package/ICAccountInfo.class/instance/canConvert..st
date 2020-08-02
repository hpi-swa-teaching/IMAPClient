validating
canConvert: aString
	
	^ ('"|\\' asRegex matchesIn: aString) isEmpty