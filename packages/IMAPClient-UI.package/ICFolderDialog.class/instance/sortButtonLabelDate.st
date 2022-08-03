action - sorting/filter
sortButtonLabelDate

	self sortingMethod = #date
		ifTrue: [self reverseMails ifTrue: [^ 'Date (desc)'] ifFalse: [^ 'Date (asc)']]
		ifFalse: [^ 'Date']