accessing
respondTo: aCommand

	| response |
	
	response := self responses at: aCommand ifAbsent: self badResponse.
	self makeTransition: aCommand withResponse: response.
	^ response