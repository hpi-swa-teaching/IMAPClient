read file
directoryVisitor

	^ [:directory | | currentFolder folderName matchingFolder |
		directory = self rootDirectory ifFalse: [
			folderName := directory pathParts last.
			matchingFolder := self loadedFolders select: [:folder | folder folderName = folderName].
			matchingFolder isEmpty
				ifTrue: [
					currentFolder := ICFolder
						named: folderName
						in: (self directoryToFolderDictionary at: directory containingDirectory)
						with: self endpoint
						of: #Generic]
				ifFalse: [
					self assert: matchingFolder size = 1 description: 'Critical Error. FolderName is not Unique!'.
					currentFolder := matchingFolder first].
			self directoryToFolderDictionary at: directory put: currentFolder]]