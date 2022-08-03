action - sorting/filter
sortButtonLabelSender

	self sortingMethod = #sender
		ifTrue: [self reverseMails ifTrue: [^ 'Sender (desc)'] ifFalse: [^ 'Sender (asc)']]
		ifFalse: [^ 'Sender']