initialization
fetchMultlineBodyResponse

	^ OrderedCollection newFrom: {
		'* 43 FETCH (BODY[1.1] {18}'.
		'line1'.
		'line2'.
		'line3'.
		')'.
		'. OK FETCH completed.' }