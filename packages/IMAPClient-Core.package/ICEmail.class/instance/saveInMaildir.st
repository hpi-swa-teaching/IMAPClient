accessing
saveInMaildir
	(ICFileReadWriter new) 
		write: self 
		in: (('Maildir', FileDirectory slash, (self folder endpoint serverInfo host) asString, FileDirectory slash, self folder path) copyReplaceAll: '.' with: '_') 
		as: (self uid)