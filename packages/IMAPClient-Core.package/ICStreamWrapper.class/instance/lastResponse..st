accessing
lastResponse: anOrderedCollection

	Transcript show: 'RECEIVED: ', (anOrderedCollection copy truncateTo:50); cr.
	lastResponse := anOrderedCollection