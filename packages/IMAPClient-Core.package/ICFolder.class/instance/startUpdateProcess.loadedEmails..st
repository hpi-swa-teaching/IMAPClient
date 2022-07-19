action - update emails
startUpdateProcess: anUID loadedEmails: anOrderedCollection

	| movedEmails |
	movedEmails := ICMovedEmailStorage new
		movedMailsForAccount: self accountName
		andFolder: self.
	self folderName = 'root' ifTrue: [^ true].
	ICMovedEmailStorage new deleteEmailsFromFolder: self.
	[
		anUID
			ifNil: [self fetchNumberOfLatestEmails: self class numberOfHeadersToFetchAtTheBeginning loadedEmails: anOrderedCollection]
			ifNotNil: [self fetchEmailsFrom: anUID loadedEmails: anOrderedCollection].
		movedEmails := Set new.
		^ true]
		on: Error
		do: [:error |
			self error: error asString.
			self addMails: movedEmails asOrderedCollection.
	^ false]