fetching
maildirDiffFetchHeadersFrom: start to: end

	| searchBegin searchEnd mailFolder |
	
	(FileDirectory default directoryExists: (FileDirectory default fullPathFor: self maildirFileName)) 
		ifTrue: [
			mailFolder := FileDirectory default on: self maildirFileName.
			searchBegin := mailFolder	fileNamesMatching: (end asString).
			searchEnd := mailFolder	fileNamesMatching: (start asString).
	
			(searchBegin notEmpty and: [searchEnd notEmpty]) ifTrue: [
				Transcript show: 'Do nothing. Newest Mailrange already loaded'.
				^ OrderedCollection new]].
		
     ^ self
       	sendCommand: (ICCommand fetchHeadersForUIDsFrom: start to: end);
		fetchNextResponse;
		parseFetchHeaders: self lastResponse