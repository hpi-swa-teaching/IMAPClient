accessing
respondTo: aCommand

	| response |
	response := self responses at: aCommand ifAbsent: [self halt. self badResponse].
	self makeTransition: aCommand withResponse: response.
	^ response