storage
maildirFileName

	"replace hierarchyDelimiter with FileSystem slash"

	^ 'Maildir', 
		FileDirectory slash, 
		self rootFolderName, 
		FileDirectory slash, 		
		self currentFolderName copyReplaceAll: (self hierarchyDelimiter) with: (FileDirectory slash)