storage
folderFromResponse: responseLine

	| folderPath folderType  parent |
	
	folderPath := self setFolderNamePath: responseLine.
	folderType := self getFolderType: responseLine. 

	parent := self rootFolder childFolderNamed: folderPath first 
		ifAbsent: [|folder|
			folder := ICFolder named: folderPath first in: self rootFolder with: self of: folderType.
			self readWriter writeFolder: folder].
	
	folderPath allButFirst do: [ :name | parent := parent childFolderNamed: name 
		ifAbsent: [|folder|
			folder := ICFolder named: name in: parent with: self of: folderType.
			self readWriter writeFolder: folder]]