read file
fileVisitor

	^ [:file | | currentFolder |
		currentFolder := self directoryToFolderDictionary at: file directory.
		
		(self isICFolderFile: file)
			ifTrue: [currentFolder setFrom: (Json readFrom: file)]
			ifFalse: [self addMailTo: currentFolder from: file].
		file close]