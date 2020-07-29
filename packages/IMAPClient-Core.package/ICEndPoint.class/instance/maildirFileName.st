storage
maildirFileName

	^ 'Maildir', 
		FileDirectory slash, 
		self rootDirectoryName, 
		FileDirectory slash, 		
		self currentFolderName copyReplaceAll: (self hierarchyDelimiter) with: (FileDirectory slash)