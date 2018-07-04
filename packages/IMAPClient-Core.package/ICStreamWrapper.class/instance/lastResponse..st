accessing
lastResponse: anObject

	Transcript show: 'RECEIVED: ', (anObject copy truncateTo:50); cr.
	lastResponse := anObject