accessing
directoryToFolderDictionary

	^ directoryToFolderDictionary ifNil: [directoryToFolderDictionary := Dictionary newFrom: {self rootDirectory -> self endPoint rootFolder}]