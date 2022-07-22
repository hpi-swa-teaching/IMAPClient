accessing-header
createDictionary: aJson

	| dictionary dictionaryWithSymbolsAsKeys |
	
	dictionaryWithSymbolsAsKeys := Dictionary new.
	dictionary := Dictionary newFrom: aJson.
	dictionary keysDo: [:key | dictionaryWithSymbolsAsKeys at: key asSymbol put: (dictionary at: key)].
	^ dictionaryWithSymbolsAsKeys