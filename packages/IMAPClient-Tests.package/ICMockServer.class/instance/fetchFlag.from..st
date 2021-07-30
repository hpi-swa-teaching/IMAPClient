flag
fetchFlag: aString from: aUIDRange

	| index response |
	response := aUIDRange collect: [:aNumber|
			index := aNumber - aUIDRange first + 1.
			 '* ', index asString ,' FLAGS(', '\', aString capitalized, ') UID ', aNumber asString].
	response addAll: (OrderedCollection newFrom:{'. OK FETCH completed.'}).
	^ response
		
