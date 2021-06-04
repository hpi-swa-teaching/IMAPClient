accessing
connectionHandler

	^ connectionHandler ifNil: [ICConnectionHandler new]