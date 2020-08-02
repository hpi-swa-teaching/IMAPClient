accessing
directoryToFolderDictionary

	^ directoryToFolderDictionary ifNil: [
		directoryToFolderDictionary := Dictionary newFrom: {self rootDirectory -> self endpoint rootFolder}]