action - sorting/filter
sortButtonLabelFlag

	| sortingLabel |
	sortingLabel := self class sortButtonLabels at: #flag.
	
	self sortingMethod = #flag
		ifTrue: [
			self reverseMails
				ifTrue: [^ sortingLabel, ' (desc)']
				ifFalse: [^ sortingLabel, ' (asc)']]
		ifFalse: [^ sortingLabel]