get emails
updateHeadersProcess: currentUID

	currentUID
		ifNil: [self selectedFolder getLatestEmails: self class numberOfHeadersToFetchAfterFirstLogin]
		ifNotNil: [self selectedFolder fetchHeadersFrom: currentUID].
	Transcript show: (self selectedFolder emails).
	self changed: #emailsOfSelectedFolder