read file
directoryVisitor

	^ [:directory | | currentFolder |
		directory = self rootDirectory ifFalse: [
			currentFolder := ICFolder
				named: directory pathParts last
				in: (self directoryToFolderDictionary at: directory containingDirectory)
				with: self endpoint
				of: #Generic.
			self directoryToFolderDictionary at: directory put: currentFolder]]