sort/filter
testUnreadButtonEmailVisible


	| dialog email |
	
dialog := ICFolderDialog new.
email := (ICEmail new) 
				uniqueID: self uniqueIds first; 
				folder: self root;
				date: self class date;
				seen: false.
				
self assert: (dialog shouldEmailBeVisible: email) equals: true.

dialog filterEmailsUnread.

self assert: (dialog shouldEmailBeVisible: email) equals: true.

email seen: true.
self assert: (dialog shouldEmailBeVisible: email) equals: false.

dialog folderMorph abandon
