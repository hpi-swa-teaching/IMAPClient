connection
maildirFileName
 ^ 'Maildir' , 
		FileDirectory slash, 
		(self serverInfo host replaceAll: '.' with: '_'), 
		FileDirectory slash, 
		self currentFolderName.