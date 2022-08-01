accessing
currentFolder

	^self rootFolder
		childFolderNamed: self currentFolderName
		with: self hierarchyDelimiter.