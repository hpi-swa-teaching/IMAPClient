action - update emails
startUpdateProcess: anUID
	
	|movedEmails|
	movedEmails := (ICMovedEmailStorage at: {self accountName, self folderName}).
	(self folderName = 'root') ifTrue: [ ^true].
	movedEmails do: [:anEmail | self endpoint deleteMailLocally: anEmail].
	[anUID
		ifNil: [self fetchNumberOfLatestEmails: self class numberOfHeadersToFetchAtTheBeginning]
		ifNotNil: [self fetchEmailsFrom: anUID]. movedEmails := Set new. ^true]
	on: Error
	do: [:e | self inform: e asString. self addMails: movedEmails asOrderedCollection. ^false]
