storage
setFolderNamePath: aResponseLine

	| folderPath |
	folderPath := self folderPathFor: aResponseLine.
	(aResponseLine includesSubstring: '\Trash') ifTrue: [self folderNameOfTrash: folderPath first].
	^ folderPath