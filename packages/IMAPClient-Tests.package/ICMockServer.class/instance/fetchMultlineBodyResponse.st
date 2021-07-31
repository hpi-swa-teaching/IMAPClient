body
fetchMultlineBodyResponse

	^ OrderedCollection newFrom: {
		'* 43 FETCH (BODY[TEXT] {18}'.
		'line1<br>'.
		'line2<br>'.
		'line3'.
		')'.
		'. OK FETCH completed.'}