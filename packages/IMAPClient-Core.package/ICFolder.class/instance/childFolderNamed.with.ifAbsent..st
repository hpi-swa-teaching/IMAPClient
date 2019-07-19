folder hierarchy
childFolderNamed: childFOlderName with: delimiter ifAbsent: block
	
	^ self childFolders 
		detect: [:child | child folderName = childFOlderName] 
		ifNone: [ 
			| rootPart childPart child parts |
			"splice at delimiter and ask child"
			parts := childFOlderName subStrings: delimiter.
			(parts size > 1)
				ifTrue: [
					rootPart := parts first.
					childPart := parts allButFirst joinSeparatedBy: delimiter.
					child := self childFolders detect: [ :childFolder | childFolder folderName = rootPart].
					child ifNotNil: [^ child childFolderNamed: childPart with: delimiter ifAbsent: block]].
			^ block value]