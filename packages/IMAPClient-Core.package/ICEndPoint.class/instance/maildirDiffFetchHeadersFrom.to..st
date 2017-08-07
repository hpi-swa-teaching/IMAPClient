connection
maildirDiffFetchHeadersFrom: start to: end
	| searchBegin searchEnd currentMails |
	searchBegin := (FileDirectory uri: self maildirFileName)
				fileNamesMatching: end.
	searchEnd := (FileDirectory uri: self maildirFileName)
				fileNamesMatching: start.
	
	searchBegin size > 0 & (searchEnd size > 0)
		ifTrue: [Transcript show: 'Do nothing. Newest Mailrange already loaded'.
			currentMails := rootFolder
						childFolderNamed: self currentFolderName
						ifAbsent: [OrderedCollection new].
			currentMails := currentMails emails.
			^ currentMails].
	^ self
		sendCommand: (self class fetchHeadersWithUIDRange: start to: end);
		 fetchNextResponse;
		 parseFetchHeaders: self lastResponse