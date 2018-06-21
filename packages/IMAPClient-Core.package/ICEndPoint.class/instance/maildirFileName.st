connection
maildirFileName

"replace hierarchyDelimiter with FileSystem slash"
 ^ 'Maildir' , 
		FileDirectory slash, 
		self getRootFolderName, 
		FileDirectory slash, 
		(self currentFolderName) copyReplaceAll: (self hierarchyDelimiter) with: (FileDirectory slash).