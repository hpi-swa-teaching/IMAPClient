accessing
serverInfo

	^ serverInfo ifNil: [serverInfo := ICServerInfo new]