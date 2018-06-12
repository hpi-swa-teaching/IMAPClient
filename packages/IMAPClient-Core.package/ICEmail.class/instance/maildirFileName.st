accessing
maildirFileName
	^	'Maildir' , 
		FileDirectory slash, 
		self folder endpoint getRootFolderName, 
		FileDirectory slash, 
		self folder path copyReplaceAll: '.' with: '_'