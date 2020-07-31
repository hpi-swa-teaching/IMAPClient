read file
fileVisitor

	 ^ [:file | | currentFolder | 
			currentFolder := self directoryToFolderDictionary at: file directory.
			currentFolder addMails: {
				(ICEmail newFromJsonStream: file) 
					folder: currentFolder; 
					yourself}.
			file close]
