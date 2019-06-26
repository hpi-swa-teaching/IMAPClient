as yet unclassified
listFoldersIn: anICFolder filteredBy: aString

	^ self parser parseFolderList: (self connectionHandler listFoldersIn: anICFolder path filteredBy: aString)