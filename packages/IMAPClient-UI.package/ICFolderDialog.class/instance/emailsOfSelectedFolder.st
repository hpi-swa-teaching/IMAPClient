folder selection
emailsOfSelectedFolder
	
	^ selectedFolder
		ifNil: [ OrderedCollection new ]
		ifNotNil: [ selectedFolder emails  sortBy: [:a :b | a uid > b uid]]