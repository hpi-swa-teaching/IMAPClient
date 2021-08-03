fetch
folderFromResponse: responseLine

	| folder folderPath parent namePart |
	"should be in ICEndPoint, from an achitectual standpoint"
	
	namePart := (responseLine copyAfter: ICCommand protocolQuote asCharacter).
	
	folder := ICParser parseFolderPathFrom: namePart.
	self hierarchyDelimiter: folder hierarchyDelimiter.
	folderPath := folder pathAsArray.
	
	(responseLine includesSubstring: '\Trash') ifTrue: [self folderNameOfTrash: folderPath first].
	
	parent := self rootFolder childFolderNamed: folderPath first 
		ifAbsent: [ICFolder named: folderPath first in: self rootFolder with: self].
	
	folderPath allButFirst do: [ :name | parent := parent childFolderNamed: name 
		ifAbsent: [ICFolder named: name in: parent with: self]]