get emails
updateHeadersProcess: currentUID

	currentUID
		ifNil: ["hole die Mails der letzten 3 Monate"]
		ifNotNil: [self selectedFolder fetchHeadersFrom: currentUID].
	Transcript show: ((self selectedFolder emails)).
	self changed: #emailsOfSelectedFolder