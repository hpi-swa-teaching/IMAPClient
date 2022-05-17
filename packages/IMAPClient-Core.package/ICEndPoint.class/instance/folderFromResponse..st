storage
folderFromResponse: responseLine

	| folderPath folderType  parent |
	
	folderPath := self setFolderNamePath: responseLine.
	folderType := self getFolderType: responseLine. 
	
	parent := self rootFolder childFolderNamed: folderPath first 
		ifAbsent: [ICFolder named: folderPath first in: self rootFolder with: self of: folderType].
	
	folderPath allButFirst do: [ :name | parent := parent childFolderNamed: name 
		ifAbsent: [ICFolder named: name in: parent with: self of: folderType]]