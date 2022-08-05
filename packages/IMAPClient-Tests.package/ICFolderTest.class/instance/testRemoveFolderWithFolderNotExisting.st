removeFolder
testRemoveFolderWithFolderNotExisting

	| subfolder1 subfolder2 |
	subfolder1 := ICFolder named: 'subfolder1' in: self root with: self helper endPoint of: #Generic.
	subfolder2 := ICFolder named: 'subfolder2' in: self root with: self helper endPoint of: #Generic.
	
	self should: [subfolder1 removeFolder: subfolder2] raise: Error