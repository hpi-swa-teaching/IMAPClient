action - button
submit

	self halt.
	self inputMorph abandon.
	self owner perform: self closingMethod withArguments: {self input}