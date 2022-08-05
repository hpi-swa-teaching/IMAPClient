accessing
sortingMethod

	^ sortMethod ifNil: [sortMethod := #date]