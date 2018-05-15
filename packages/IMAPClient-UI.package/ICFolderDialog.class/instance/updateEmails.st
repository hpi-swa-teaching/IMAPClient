get emails
updateEmails

	| currentUID |
	self selectedFolder ifNotNil: [
		currentUID := self getCurrentUID.
		currentUID
			ifNil: ["hole die Mails der letzten 3 Monate"]
			ifNotNil: []
		]