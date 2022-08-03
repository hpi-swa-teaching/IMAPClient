action - sorting/filter
sortEmailsBy: aSymbol

	self sortingMethod = aSymbol ifTrue: [self toggleReverseMails] ifFalse: [
		self sortingMethod: aSymbol.
		self reverseMails: false].
	self
		changed: #optionPanelButtonLabelUpdate;
		changed: #emailsOfSelectedFolder