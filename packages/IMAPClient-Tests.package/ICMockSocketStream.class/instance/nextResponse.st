accessing
nextResponse
	
	self responseQueue ifEmpty: [ ^ OrderedCollection new].
	
	self lastResponse: self responseQueue removeFirst.
	Transcript show: 'RECEIVING: ' , self lastResponse; cr.
	^ self lastResponse