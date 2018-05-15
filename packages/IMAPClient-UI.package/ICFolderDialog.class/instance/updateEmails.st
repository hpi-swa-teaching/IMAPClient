get emails
updateEmails

	self selectedFolder ifNotNil: [ self startUpdateHeadersProcess: self getCurrentUID ]