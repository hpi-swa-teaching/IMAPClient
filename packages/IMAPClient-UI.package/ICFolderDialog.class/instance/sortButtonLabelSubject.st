action - sorting/filter
sortButtonLabelSubject

	self sortMethod = #subject
		ifTrue: [self reverseMails ifTrue: [^ 'Subject (desc)'] ifFalse: [^ 'Subject (asc)']]
		ifFalse: [^ 'Subject']