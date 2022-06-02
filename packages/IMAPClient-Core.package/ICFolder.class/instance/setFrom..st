accessing
setFrom: aJson
	
	self folderType: (aJson at: 'type' ifAbsent: ['Generic']) asSymbol