hierarchy
childFolderNamed: name with: delimiter ifAbsent: block
	
	^ self childFolders 
		detect: [:child | child name = name] 
		ifNone: [ 
			| rootPart childPart child parts |
			"splice at delimiter and ask child"
			parts := name subStrings: delimiter.
			(parts size > 1)
				ifTrue: [
					rootPart := parts first.
					childPart := parts allButFirst joinSeparatedBy: delimiter.
					child := self childFolders detect: [ :childFolder | childFolder name = rootPart].
					child ifNotNil: [^ child childFolderNamed: childPart with: delimiter ifAbsent: block]].
			^ block value]