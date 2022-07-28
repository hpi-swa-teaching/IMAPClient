body
fetchBodyResponse: anUID

	^ OrderedCollection newFrom: {'* ', anUID asString ,' FETCH (BODY[TEXT] {18}'. 'Das ist der Body'. ')'. '. OK FETCH completed.'}