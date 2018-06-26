connection
maildirDiffFetchHeadersFrom: start to: end

	| searchBegin searchEnd mailFolder |
	
	(FileDirectory default directoryExists: (FileDirectory default fullPathFor: self maildirFileName)) 
		ifTrue: [
			mailFolder := FileDirectory default on: self maildirFileName.
			searchBegin := mailFolder	fileNamesMatching: (end asString).
			searchEnd := mailFolder	fileNamesMatching: (start asString).
	
			searchBegin size > 0 & (searchEnd size > 0)
			ifTrue: [
				Transcript show: 'Do nothing. Newest Mailrange already loaded'.
				^ OrderedCollection new]].
	
     ^ self
       	sendCommand: (self class fetchHeadersWithUIDRange: start to: end);
		fetchNextResponse;
		parseFetchHeaders: self lastResponse