fetching
fetchHeadersFrom: aBeginId to: anEndId

	|uidSize start end filename files files2 currentMails|

	 self getCurrentUIDs.
	uidSize := uids size.
	(aBeginId > uidSize)
			ifTrue: [^ OrderedCollection new.].
	(anEndId = '*')
			ifTrue: [ start := uids first.]
			ifFalse: [(anEndId > uidSize)
					ifTrue: [start := uids first.]
					ifFalse: [ start := uids at: (uidSize - anEndId + 1). ].].
	end := uids at: (uidSize - aBeginId + 1).
	filename := 'Maildir/owa_hpi_de/' , (self currentFolderName).
	Transcript show: filename; cr.
	Transcript show: end; cr.
	files := ((FileDirectory uri: filename) fileNamesMatching: end).
	files2 := ((FileDirectory uri: filename) fileNamesMatching: start).
	Transcript show: files; cr; show: files2; cr.
	(((files size) > 0) & ((files2 size) > 0))
		ifTrue: [Transcript show: 'Do nothing. Newest Mailrange already loaded'.
			     currentMails := rootFolder childFolderNamed: (self currentFolderName) ifAbsent: [OrderedCollection new.].
			     currentMails := currentMails emails.
			     ^ currentMails.].
	
	^self 
		sendCommand: (self class fetchHeadersWithUIDRange: start to: end);
		fetchNextResponse;
		parseFetchHeaders: self lastResponse