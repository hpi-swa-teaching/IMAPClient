write file
createPathRecursive: aPath and: aFileWriter

	| subDir |
	
	subDir := ((aPath subStrings: (FileDirectory slash))).
	
	subDir ifNotEmpty: [
			(aFileWriter directoryExists: subDir first)
				ifFalse: [ aFileWriter createDirectory: subDir first].
				self createPathRecursive: 
					(subDir allButFirst joinSeparatedBy: (FileDirectory slash)) 
					and: (aFileWriter on: subDir first)].
	^ self