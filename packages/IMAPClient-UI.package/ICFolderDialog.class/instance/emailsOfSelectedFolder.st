folder selection
emailsOfSelectedFolder

	^ selectedFolder
		ifNil: [ ^{} ]
		ifNotNil: [ ^ selectedFolder emails ]