accessing
nextResponse
	
	"self responseQueue ifEmpty: [ ^ OrderedCollection new]."
	
	self lastResponse: self responseQueue removeFirst.
	^ self lastResponse