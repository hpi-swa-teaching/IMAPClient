action - update emails
startUpdateProcess: anUID

	(self folderName = 'root') ifTrue: [^self].
	
	anUID
		ifNil: [self fetchNumberOfLatestEmails: self class numberOfHeadersToFetchAtTheBeginning]
<<<<<<< HEAD
		ifNotNil: [self fetchHeadersFrom: anUID]
=======
		ifNotNil: [self fetchEmailsFrom: anUID]
>>>>>>> feature/all_mails_fetched
