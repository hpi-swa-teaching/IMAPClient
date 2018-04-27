write file
createPathRecursive: aPath and: aFileWriter
	|subDir|
	
	subDir := ((aPath subStrings: (FileDirectory slash))).
	subDir size > 0
		ifTrue: [
			(aFileWriter directoryExists: subDir first)
				ifFalse: [ aFileWriter createDirectory: subDir first].
				"Transcript show: subDir first."
				self createPathRecursive: 
					(subDir allButFirst joinSeparatedBy: (FileDirectory slash)) 
					and: (aFileWriter on: subDir first).	
		].
	^ self 
	