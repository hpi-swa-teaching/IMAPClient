sort/filter
testUnreadButtonEmailVisible

	| dialog email |
	dialog := ICFolderDialog new.
	email := self helper createAnEmail: self root.
	
	self assert: (dialog shouldEmailBeVisible: email) equals: true.
	
	dialog filterEmailsUnread.
	
	self assert: (dialog shouldEmailBeVisible: email) equals: true.
	
	email seen: true.
	self assert: (dialog shouldEmailBeVisible: email) equals: false.
	
	dialog folderDialogMorph abandon