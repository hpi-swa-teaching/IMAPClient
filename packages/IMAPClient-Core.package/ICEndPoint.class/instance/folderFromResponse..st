storage
folderFromResponse: responseLine

	| folderPath folderType  parent |
	
	folderPath := self setFolderNamePath: responseLine.
	folderType := self getFolderType: responseLine. 

	parent := self addFolderTo: self rootFolder with: folderPath first with: folderType.
	self updateFolderType: parent with: folderType.
	folderPath allButFirst do: [ :name | self addFolderTo: parent with: name with: folderType]