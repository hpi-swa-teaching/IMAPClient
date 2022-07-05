accessing
setFrom: aJson

	self 
		id: (aJson at: 'id');
		folderType: (aJson at: 'type' ifAbsent: ['Generic']) asSymbol