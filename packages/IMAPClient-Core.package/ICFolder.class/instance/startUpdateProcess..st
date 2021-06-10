action - update emails
startUpdateProcess: anUID

	(self folderName = 'root') ifTrue: [^true].
	
	[anUID
		ifNil: [self fetchNumberOfLatestEmails: self class numberOfHeadersToFetchAtTheBeginning]
		ifNotNil: [self fetchEmailsFrom: anUID]. ^true]
	on: Error
	do: [:e | self inform: e asString. ^false]
