keyboard handling
emailListKeyPressMapping

	^ Dictionary newFrom: {$o -> [self selectedEmail ifNotNil: [self openEmail: self selectedEmail]]}