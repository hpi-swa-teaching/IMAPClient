accessing
getButtonLabel
	(self updateMode)
		ifTrue: [^ 'Update']
		ifFalse: [^ 'Add']