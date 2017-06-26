accessing
lastResponse: anObject
	Transcript show: 'RECEIVED: ', anObject; cr.
	lastResponse := anObject