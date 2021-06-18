protocol handling - fetch
maildirDiffFetchHeadersFrom: start to: end

	| searchBegin searchEnd mailFolder |

	(FileDirectory default directoryExists: (FileDirectory default fullPathFor: self maildirFileName)) 
		ifTrue: [
			mailFolder := FileDirectory default on: self maildirFileName.
			searchBegin := mailFolder	fileNamesMatching: (end asString).
			searchEnd := mailFolder	fileNamesMatching: (start asString).
	
			(searchBegin notEmpty and: [searchEnd notEmpty])
				ifTrue: [^ OrderedCollection new]].

     self connectionHandler fetchHeadersForUIDsFrom: start to: end.

	^ self parseFetchHeaders: self lastResponse