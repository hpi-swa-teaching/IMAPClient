action - sorting/filter
sortButtonLabelSubject

	self sortingMethod = #subject
		ifTrue: [self reverseMails ifTrue: [^ 'Subject (desc)'] ifFalse: [^ 'Subject (asc)']]
		ifFalse: [^ 'Subject']