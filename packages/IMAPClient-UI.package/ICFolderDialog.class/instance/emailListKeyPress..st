events
emailListKeyPress: aKey

	((aKey asLowercase = self class defaultOpenEmailChar) and: [self selectedEmail notNil]) ifTrue: [
		self openEmail: self selectedEmail.
		^ true
	].
	^ false