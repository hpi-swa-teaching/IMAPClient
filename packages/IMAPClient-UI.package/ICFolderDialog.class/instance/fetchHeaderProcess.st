accessing
fetchHeaderProcess

	Transcript show: 'Starting FetchHeaders'.
	selectedFolder fetchHeadersFor: self numberOfHeadersToFetch.
	Transcript show: 'Done with FetchHeaders'.
	
	Transcript show: ((selectedFolder emails)).
	self changed: #emailsOfSelectedFolder.