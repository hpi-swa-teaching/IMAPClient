storage
maildirFileName: aName

	^ 'Maildir', FileDirectory slash, self rootDirectoryName, FileDirectory slash, aName
		copyReplaceAll: self hierarchyDelimiter
		with: FileDirectory slash