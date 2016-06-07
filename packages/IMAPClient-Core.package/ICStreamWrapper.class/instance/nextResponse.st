accessing
nextResponse

	self lastResponse: self stream nextLine.
	^ self lastResponse