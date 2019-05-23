events
emailListKeyPressMapping

	^ {
		self class defaultOpenEmailChar -> [self selectedEmail ifNotNil: [self openEmail: self selectedEmail]]
	} asDictionary