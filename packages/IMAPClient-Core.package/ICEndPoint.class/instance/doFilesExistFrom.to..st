protocol handling - fetch
doFilesExistFrom: start to: end

	| searchBegin searchEnd mailFolder |
	mailFolder := FileDirectory default on: self maildirFileName.
	searchBegin := mailFolder fileNamesMatching: end asString.
	searchEnd := mailFolder fileNamesMatching: start asString.
	
	^ searchBegin notEmpty and: [searchEnd notEmpty]