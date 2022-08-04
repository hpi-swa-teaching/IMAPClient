accessing
iconName

	^ self class getIconDictionary at: self folderType ifAbsent: [^ #none]