protocol parse
folderFromResponse: responseLine

	| folder folderPath parent |
	
	folder := ICParser folderPathFrom: responseLine.
	self hierarchyDelimiter: folder hierarchyDelimiter.
	folderPath := folder pathAsArray.
	
	parent := self rootFolder childFolderNamed: folderPath first 
		ifAbsent: [ICFolder named: folderPath first in: self rootFolder with: self].
	
	folderPath allButFirst do: [ :name | parent := parent childFolderNamed: name 
		ifAbsent: [ICFolder named: name in: parent with: self]]