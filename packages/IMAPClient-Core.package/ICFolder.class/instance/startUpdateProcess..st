action - update emails
startUpdateProcess: anUID

	| movedEmails |
	movedEmails := ICMovedEmailStorage new
		movedMailsForAccount: self accountName
		andFolder: self.
	self folderName = 'root' ifTrue: [^ true].
	ICMovedEmailStorage new deleteEmailsFromFolder: self.
	[
		anUID
			ifNil: [self fetchNumberOfLatestEmails: self class numberOfHeadersToFetchAtTheBeginning]
			ifNotNil: [self fetchEmailsFrom: anUID].
		movedEmails := Set new.
		^ true]
		on: Error
		do: [:error |
			self inform: error asString.
			self addMails: movedEmails asOrderedCollection.
			^ false]