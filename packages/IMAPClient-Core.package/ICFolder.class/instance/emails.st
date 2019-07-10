accessing
emails

	^ emails ifNil: [emails := (SortedCollection sortBlock: [:first :second | first dateInSeconds >= second dateInSeconds])]