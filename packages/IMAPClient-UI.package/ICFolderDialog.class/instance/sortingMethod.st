accessing
sortingMethod

	^ sortingMethod ifNil: [sortingMethod := #date]