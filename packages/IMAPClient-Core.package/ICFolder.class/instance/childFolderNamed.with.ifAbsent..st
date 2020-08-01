action - folder hierarchy
childFolderNamed: childFolderName with: delimiter ifAbsent: block

	| rootPart childPart child parts |
	
	^ self childFolders 
		detect: [:subFolder | subFolder folderName = childFolderName] 
		ifNone: [ 
			"splice at delimiter and ask child"
			parts := childFolderName subStrings: delimiter.
			(parts size > 1)
				ifTrue: [
					rootPart := parts first.
					childPart := parts allButFirst joinSeparatedBy: delimiter.
					child := self childFolders detect: [ :childFolder | childFolder folderName = rootPart].
					child ifNotNil: [^ child childFolderNamed: childPart with: delimiter ifAbsent: block]].
			^ block value]