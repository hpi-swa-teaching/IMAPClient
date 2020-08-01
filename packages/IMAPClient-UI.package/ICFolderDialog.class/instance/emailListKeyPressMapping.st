keyboard handling
emailListKeyPressMapping

	^ {
		$o -> [self selectedEmail ifNotNil: [self openEmail: self selectedEmail]]
	} asDictionary