read file
directoryVisitor

	
	^ [:directory | | currentFolder folderName matchingFolder |	
		self directoryToFolderDictionary at: directory ifAbsent:[
		directory = self rootDirectory ifFalse: [
			folderName :=directory pathParts last.
			matchingFolder:= self loadedFolders select:  [:f | f folderName = folderName].
			
			matchingFolder isEmpty
			ifTrue: [currentFolder := ICFolder
				named: directory pathParts last
				in: (self directoryToFolderDictionary at: directory containingDirectory)
				with: self endpoint
				of: #Generic.]
			ifFalse: [
				self assert: matchingFolder size = 1 description: 'Crutical Error. FolderName is not Unique! You should change the name to id ;)'.
				currentFolder:= matchingFolder first].
			self directoryToFolderDictionary at: directory put: currentFolder]]]