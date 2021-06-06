accessing
connectionHandler

	^ connectionHandler ifNil: [connectionHandler := ICConnectionHandler new]