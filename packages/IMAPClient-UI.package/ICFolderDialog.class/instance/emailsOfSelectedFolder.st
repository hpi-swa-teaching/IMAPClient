as yet unclassified
emailsOfSelectedFolder

	^ selectedFolder
		ifNil: [ ^{} ]
		ifNotNil: [ ^ selectedFolder emails ]