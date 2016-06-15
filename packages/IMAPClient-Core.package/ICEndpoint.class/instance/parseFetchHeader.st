protocol parse
parseFetchHeader

	^ ICEmailObject new
		to: ((self lastResponse at: 2) subStrings: ' ') second;
		from: (self lastResponse at: 4) withBlanksTrimmed;
		subject: ((((self lastResponse at: 5) subStrings: ' ') allButFirst) joinSeparatedBy: ' ');
		date: ((((self lastResponse at: 6) subStrings: ' ') allButFirst) joinSeparatedBy: ' ').
		
		
	
	