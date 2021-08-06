action - update emails
fetchNumberOfLatestEmails: aNumber

	(self endpoint currentUIDsFor: self) 
		ifEmpty: [^ OrderedCollection new].
	self fetchEmailsFrom: (self startUIDFor: aNumber)