action - update emails
fetchNumberOfLatestEmails: aNumber loadedEmails: anOrderedCollection

	(self endpoint currentUIDsFor: self) ifEmpty: [^ OrderedCollection new].
	self fetchEmailsFrom: (self startUIDFor: aNumber) loadedEmails: anOrderedCollection