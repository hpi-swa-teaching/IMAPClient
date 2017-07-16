folder selection
emailsOfSelectedFolder

	^ selectedFolder
		ifNil: [ OrderedCollection new ]
		ifNotNil: [ selectedFolder emails ]