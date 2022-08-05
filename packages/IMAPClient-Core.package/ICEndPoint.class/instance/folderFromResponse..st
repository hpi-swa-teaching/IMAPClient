storage
folderFromResponse: responseLine

	| folderPath folderType parent |
	folderPath := self setFolderNamePath: responseLine.
	folderType := self getFolderType: responseLine.
	
	parent := self addFolderTo: self rootFolder named: folderPath first ofType: folderType.
	self updateFolderType: parent with: folderType.
	folderPath allButFirst do: [:name | self addFolderTo: parent named: name ofType: folderType]