accessing
lastResponse: anOrderedCollection

	Transcript 
		show: 'RECEIVED: ', (anOrderedCollection copy 
								truncateTo: self class maxTranscriptDumpLength);
		cr.
	lastResponse := anOrderedCollection