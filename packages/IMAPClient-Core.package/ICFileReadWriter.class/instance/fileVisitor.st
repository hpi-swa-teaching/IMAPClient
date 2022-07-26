read file
fileVisitor
	^ [:file | 
	| currentFolder |
	currentFolder := self directoryToFolderDictionary at: file directory.
	(self isICFolderFile: file)
		ifTrue: [self read: file for: currentFolder]
		ifFalse: [(self isICAccountSettingsFile: file)
				ifFalse: [self addMailTo: currentFolder from: file]].
	file close]