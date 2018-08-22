initialization
fetchBodyResponse

	^ OrderedCollection newFrom: {
		'* 42 FETCH (BODY[TEXT] {18}'.
		'Das ist der Body'.
		')'.
		'. OK FETCH completed.'}