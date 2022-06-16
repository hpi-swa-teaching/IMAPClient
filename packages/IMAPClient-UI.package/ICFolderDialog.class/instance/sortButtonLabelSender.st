action - sorting/filter
sortButtonLabelSender

	self sortMethod = #sender
		ifTrue: [self reverseMails ifTrue: [^ 'Sender (desc)'] ifFalse: [^ 'Sender (asc)']]
		ifFalse: [^ 'Sender']