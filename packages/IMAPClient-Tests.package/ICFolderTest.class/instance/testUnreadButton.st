sort/filter
testUnreadButton

	| dialog |
	dialog := ICFolderDialog new.
	
	self assert: dialog showUnread equals: false.
	
	dialog filterEmailsUnread.
	
	self assert: dialog showUnread equals: true.
	
	dialog folderDialogMorph abandon