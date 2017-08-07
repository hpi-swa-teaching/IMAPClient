accessing
fetchHeaderProcess

	selectedFolder fetchHeadersFor: self numberOfHeadersToFetch.
	
	Transcript show: ((selectedFolder emails)).
	self changed: #emailsOfSelectedFolder.