read file
fileVisitor

	 ^ [:file | | currentFolder | 
			currentFolder := self directoryToFolderDictionary at: file directory.
			currentFolder addMails: {(self readMailFromStream: file) folder: currentFolder; yourself}]
