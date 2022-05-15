storage
folderFromResponse: responseLine

	| folderPath parent |
	
	folderPath := self folderPathFor: responseLine.
	
	(responseLine includesSubstring: '\Trash') ifTrue: [self folderNameOfTrash: folderPath first].
	(responseLine includesSubstring: '\Drafts') ifTrue: [self folderNameOfDrafts: folderPath first].
	(responseLine includesSubstring: '\Junk') ifTrue: [self folderNameOfJunk: folderPath first].
	(responseLine includesSubstring: '\Sent') ifTrue: [self folderNameOfSent: folderPath first].

	parent := self rootFolder childFolderNamed: folderPath first 
		ifAbsent: [ICFolder named: folderPath first in: self rootFolder with: self].
	
	folderPath allButFirst do: [ :name | parent := parent childFolderNamed: name 
		ifAbsent: [ICFolder named: name in: parent with: self]]