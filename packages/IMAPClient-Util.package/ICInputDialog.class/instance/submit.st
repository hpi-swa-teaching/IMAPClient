action - button
submit

	self inputMorph abandon.
	self owner perform: self closingMethod withArguments: {self input}.
	
