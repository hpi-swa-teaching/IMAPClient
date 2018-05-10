connection
maildirDiffFetchHeadersFrom: start to: end
	| searchBegin searchEnd currentMails mailFolder|
	
	(FileDirectory default directoryExists: (FileDirectory default fullPathFor: self maildirFileName)) 
		ifTrue: [
			    mailFolder := FileDirectory default on: self maildirFileName.
				searchBegin := mailFolder	fileNamesMatching: end.
				searchEnd := mailFolder	fileNamesMatching: start.
	
				searchBegin size > 0 & (searchEnd size > 0)
					ifTrue: [Transcript show: 'Do nothing. Newest Mailrange already loaded'.
						currentMails := rootFolder
									childFolderNamed: self currentFolderName
									ifAbsent: [OrderedCollection new].
						currentMails := currentMails emails.
						^ currentMails].
		].

     ^self
       	sendCommand: (self class fetchFlagsAndHeadersWithUIDRange: start to: end);
		fetchNextResponse;
		parseFetchHeaders: self lastResponse