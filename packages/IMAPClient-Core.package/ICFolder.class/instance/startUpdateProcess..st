action - update emails
startUpdateProcess: anUID
	
	| movedEmails acc |
	acc := self accountName.
	movedEmails := ICMovedEmailStorage new getSetForAccount: self accountName andFolder: self.
	(self folderName = 'root') ifTrue: [ ^true].
	ICMovedEmailStorage new deleteEmailsFromFolder: self.
	[anUID
		ifNil: [self fetchNumberOfLatestEmails: self class numberOfHeadersToFetchAtTheBeginning]
		ifNotNil: [self fetchEmailsFrom: anUID].
		
		movedEmails := Set new. 
		^true
	] on: Error
	do: [:e | self inform: e asString. self addMails: movedEmails asOrderedCollection. ^false]
