verification
filesExistIn: aPathString from: start to: end

	| searchBegin searchEnd mailFolder |
	mailFolder := FileDirectory default on: aPathString.
	searchBegin := mailFolder fileNamesMatching: end asString.
	searchEnd := mailFolder fileNamesMatching: start asString.
	
	^ searchBegin notEmpty and: [searchEnd notEmpty]