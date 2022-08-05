action - sorting/filter
sortButtonLabelDate

	| sortingLabel |
	sortingLabel := self class sortButtonLabels at: #date.
	
	self sortingMethod = #date
		ifTrue: [
			self reverseMails
				ifTrue: [^ sortingLabel, ' (desc)']
				ifFalse: [^ sortingLabel, ' (asc)']]
		ifFalse: [^ sortingLabel]