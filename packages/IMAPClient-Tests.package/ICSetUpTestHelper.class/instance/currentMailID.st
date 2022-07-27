email-handling
currentMailID

	| id |
	id := currentMailID
		ifNil: [currentMailID := 1]
		ifNotNil: [currentMailID := currentMailID + 1].
	^ id asString