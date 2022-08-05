action - sorting/filter
sortButtonLabelSubject
	
	| sortingLabel |
	
	sortingLabel := self class sortButtonLabels at: #subject.
	
	self sortingMethod = #subject
		ifTrue: [self reverseMails ifTrue: [^ sortingLabel, ' (desc)'] ifFalse: [^ sortingLabel, ' (asc)']]
		ifFalse: [^ sortingLabel]