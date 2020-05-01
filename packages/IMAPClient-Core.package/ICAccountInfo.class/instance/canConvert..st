validation
canConvert: aString
	
	^ ('"|\\' asRegex matchesIn: aString) isEmpty