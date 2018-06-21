hierarchy
childFolderNamed: name with: delimiter ifAbsent: block
	^ self childFolders 
		detect: [ :child | child name = name ] 
		ifNone: [ |rootPart childPart delimiterIndex child|
			"splice at delimiter and ask child"
			delimiterIndex := name indexOf: delimiter asCharacter.
			(delimiterIndex ~= 0)
				ifTrue:[
					rootPart := name first: (delimiterIndex -1).
					childPart := name last: (name size - (delimiterIndex)).
					child := self childFolders detect: [ :childFolder | childFolder name = rootPart].
					(child)
						ifNotNil: [^ child childFolderNamed: childPart with: delimiter ifAbsent: block]
				].
			
		^ block value	
			
		]
