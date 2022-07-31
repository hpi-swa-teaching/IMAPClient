countFolders
testNumberOfUnseenEmails

	self helper endpoint isConnected: false.
	
	self helper createNumberOfEmails: 2 in: self root.
	self assert: self root numberOfUnseenMails equals: 2.
	self root switchFlag: #seen for: self root emails first to: true.
	
	self assert: self root numberOfUnseenMails equals: 1