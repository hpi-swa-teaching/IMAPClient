action - update emails
fetchEmailsFrom: anUID loadedEmails: anICEmailOrderedCollection 
	
	| fetchedEmails folderEmails loadedEmails |
	fetchedEmails := self getFetchedEmails: anUID.
	loadedEmails := anICEmailOrderedCollection.
	folderEmails := self emails.
	fetchedEmails
		do: [:email | 
			| matchingEmail |
			matchingEmail := loadedEmails
						select: [:each | each equalsExceptFolder: email].
			matchingEmail isEmpty
				ifFalse: [self assert: matchingEmail size = 1 description: 'Critical Error. Only one email should match'.
					
					email id: matchingEmail first id].
			self endpoint readWriter write: email].
	folderEmails
		do: [:email | (fetchedEmails
					anySatisfy: [:each | each equalsExceptFolder: email])
				ifFalse: [self endpoint readWriter delete: email]]