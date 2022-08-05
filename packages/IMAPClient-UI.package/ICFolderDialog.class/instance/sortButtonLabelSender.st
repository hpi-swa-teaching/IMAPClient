action - sorting/filter
sortButtonLabelSender

	| sortingLabel |
	sortingLabel := self class sortButtonLabels at: #sender.
	
	self sortingMethod = #sender
		ifTrue: [
			self reverseMails
				ifTrue: [^ sortingLabel, ' (desc)']
				ifFalse: [^ sortingLabel, ' (asc)']]
		ifFalse: [^ sortingLabel]