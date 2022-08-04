action - update emails
fetchEmailsWithLoadedEmails: anICEmailOrderedCollection

	| fetchedEmails |
	fetchedEmails := self getFetchedEmails.
	self save: fetchedEmails inReferenceTo: anICEmailOrderedCollection.
	self removeOutdated: self emails basedOn: fetchedEmails