initialization
fetchBodyResponse

	^ OrderedCollection newFrom: {
		'* 42 FETCH (BODY[1.1] {18}'.
		'Das ist der Body'.
		')'.
		'. OK FETCH completed.' }