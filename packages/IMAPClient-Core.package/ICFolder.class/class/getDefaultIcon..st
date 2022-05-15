instance creation
getDefaultIcon: name
	
	|dic|

	dic := ICFolder getIconDictionary.
	
	(dic includesKey: name)
		ifTrue: [^ dic at: name]
		ifFalse: [^ #none]
	
	