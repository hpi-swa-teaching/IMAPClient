protocol handling - fetch
listAllFolders

	^ self connectionHandler listFoldersIn: String empty using: '*'