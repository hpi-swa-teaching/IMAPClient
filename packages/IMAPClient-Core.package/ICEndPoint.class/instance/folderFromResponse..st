protocol parse
folderFromResponse: responseLine

	| folderPath parent |
	folderPath := self folderPathFrom: responseLine.
	Transcript show: 'folderPath'; show: folderPath; cr.
	parent := self rootFolder childFolderNamed: folderPath first 
		ifAbsent: [ ICFolder named: folderPath first in: self rootFolder with: self ].
	Transcript show: 'parent'; show: parent; cr.

	folderPath allButFirst do: [ :name | parent := parent childFolderNamed: name 
		ifAbsent: [ ICFolder named: name in: parent with: self ]].
	
	
