accessing
fetchHeaderProcess
	Transcript show: 'Starting FetchHeaders'.
	selectedFolder fetchHeaders.
	Transcript show: 'Done with FetchHeaders'.
	
	Transcript show: ((selectedFolder emails)).
	self changed: #emailsOfSelectedFolder.