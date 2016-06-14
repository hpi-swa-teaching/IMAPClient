hierarchy
childFolderNamed: name ifAbsent: block

	self childFolders do: [ :child | child name = name ifTrue: [ ^ child ]].
	
	^ block value