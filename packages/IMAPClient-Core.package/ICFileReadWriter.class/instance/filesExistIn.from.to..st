as yet unclassified
filesExistIn: aDirectoryName from: start to: end

	| searchBegin searchEnd mailFolder |
	mailFolder := FileDirectory default on: aDirectoryName.
	searchBegin := mailFolder fileNamesMatching: end asString.
	searchEnd := mailFolder fileNamesMatching: start asString.
	
	^ searchBegin notEmpty and: [searchEnd notEmpty]