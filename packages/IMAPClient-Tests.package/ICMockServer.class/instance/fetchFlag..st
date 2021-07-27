accessing
fetchFlag: aString

	^(OrderedCollection newFrom: {
			 '* 1 FLAGS(', '\', aString capitalized, ') UID 48'.
			'. OK FETCH completed.' })