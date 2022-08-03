countFolders
testNumberOfUnseenEmails

	self assert: self root numberOfUnseenMails equals: 3.
	self root switchFlag: #seen for: self root emails first to: true.
	
	self assert: self root numberOfUnseenMails equals: 2