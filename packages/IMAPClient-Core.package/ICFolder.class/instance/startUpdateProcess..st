action - update emails
startUpdateProcess: anUID
	
	| movedEmails |
	movedEmails := ICMovedEmailStorage new movedMailsForAccount: self accountName andFolder: self.
	(self folderName = 'root') ifTrue: [^ true].
	ICMovedEmailStorage new deleteEmailsFromFolder: self.
	[(anUID asNumber < 0)
		ifTrue: [self fetchNumberOfLatestEmails: self class numberOfHeadersToFetchAtTheBeginning]
		ifFalse: [self fetchEmailsFrom: anUID].
		movedEmails := Set new. 
		^ true
	] on: Error
	  do: [:error | self inform: error asString. 
				BreakPoint break.
				self addMails: movedEmails asOrderedCollection. 
				^ false]
