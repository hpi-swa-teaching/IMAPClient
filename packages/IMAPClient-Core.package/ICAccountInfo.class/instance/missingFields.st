accessing
missingFields
	
	^ (self asDictionary select: [ :value | (value asString isEmpty) | (value = nil asString) ]) keys