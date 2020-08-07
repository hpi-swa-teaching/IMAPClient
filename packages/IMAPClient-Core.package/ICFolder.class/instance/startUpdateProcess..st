updateEmails
startUpdateProcess: anUID

	(self folderName = 'root') ifTrue: [^self].
	
	[anUID
		ifNil: [self latestEmails: self class numberOfHeadersToFetchAtTheBeginning]
		ifNotNil: [self fetchHeadersFrom: anUID]]
	on: Error
	do: [:e | self inform: e asString]