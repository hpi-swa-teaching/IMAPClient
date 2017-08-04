accessing
maildirFileName
	^	'Maildir' , 
		FileDirectory slash, 
		self folder endpoint serverInfo host asString, 
		FileDirectory slash, 
		self folder path copyReplaceAll: '.' with: '_'