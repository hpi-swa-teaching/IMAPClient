accessing
sortMethod
	sortMethod ifNil: [sortMethod := #date].
	^ sortMethod