get emails
updateHeadersProcess: currentUID

	currentUID
		ifNil: [self selectedFolder getLatestEmails: 100]
		ifNotNil: [self selectedFolder fetchHeadersFrom: currentUID].
	Transcript show: ((self selectedFolder emails)).
	self changed: #emailsOfSelectedFolder