accessing
nextResponse
	
	self responseQueue ifEmpty: [ ^ self ].
	
	self lastResponse: self responseQueue removeFirst.
	^ self lastResponse

	