mock methods
addTestFoldersTo: anICEndPoint

	self class testFolderNames do: [:aTestFolderName | ICFolder named: aTestFolderName in: anICEndPoint rootFolder with: anICEndPoint of: #Generic]