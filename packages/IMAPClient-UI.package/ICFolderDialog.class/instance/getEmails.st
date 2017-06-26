get emails
getEmails

	self selectedFolder
		ifNotNil: [ self startFetchHeaderProcess ]