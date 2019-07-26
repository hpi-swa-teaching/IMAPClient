accessing
fatalErrorOccured

	^ fatalErrorOccured ifNil: [fatalErrorOccured := false]