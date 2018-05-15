accessing
updateHeadersProcess

	selectedFolder fetchHeadersFrom: self getCurrentUID.
	
	Transcript show: ((selectedFolder emails)).
	self changed: #emailsOfSelectedFolder.