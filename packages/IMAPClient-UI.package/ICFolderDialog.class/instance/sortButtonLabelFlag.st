action - sorting/filter
sortButtonLabelFlag

	self sortingMethod = #flag
		ifTrue: [self reverseMails ifTrue: [^ 'Flag (desc)'] ifFalse: [^ 'Flag (asc)']]
		ifFalse: [^ 'Flag']