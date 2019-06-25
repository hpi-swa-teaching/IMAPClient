helper
emptyParametersIn: aDictionary

	^ (aDictionary select: [ :value | (value asString isEmpty) | (value = nil asString) ]) keys