read file
directoryVisitorWith: rootFolder and: rootDirectory and: anEndpoint

	directoryToFolderDictionary := Dictionary newFrom: {rootDirectory pathName -> rootFolder}.
	
	^ [:directory | | parentFolder currentFolder |
		(directory pathName = rootDirectory pathName) ifFalse: [
			parentFolder := directoryToFolderDictionary at: directory containingDirectory pathName.
			currentFolder := (ICFolder new)
				folderName: directory pathParts last;
				endpoint: anEndpoint;
				yourself.
			parentFolder addFolder: currentFolder.
			directoryToFolderDictionary at: directory pathName put: currentFolder]]