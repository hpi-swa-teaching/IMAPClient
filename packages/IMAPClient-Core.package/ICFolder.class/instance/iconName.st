accessing
iconName

	| dict |
	dict := self class getIconDictionary.
	
	(dict includesKey: self folderType)
		ifTrue: [^ dict at: self folderType]
		ifFalse: [^ #none]