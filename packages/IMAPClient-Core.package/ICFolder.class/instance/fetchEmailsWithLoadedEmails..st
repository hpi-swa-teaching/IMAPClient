action - update emails
fetchEmailsWithLoadedEmails: anICEmailOrderedCollection 
	
	| fetchedEmails folderEmails loadedEmails |
	fetchedEmails := self getFetchedEmails.
	loadedEmails := anICEmailOrderedCollection.
	folderEmails := self emails.
	self save: fetchedEmails inReferenceTo: loadedEmails.
	self removeOutdated: folderEmails basedOn: fetchedEmails