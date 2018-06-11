get emails
updateFlags

	self selectedFolder ifNotNil: [ self startUpdateHeadersProcess: self getHighestUID ]