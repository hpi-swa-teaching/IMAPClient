action - sorting/filter
sortButtonLabelDate

	self sortMethod = #date
		ifTrue: [self reverseMails ifTrue: [^ 'Date (desc)'] ifFalse: [^ 'Date (asc)']]
		ifFalse: [^ 'Date']